#include <iostream>
#include <cmath>

#include "mmio.hpp"

constexpr float DEFAULT_PL_CLK_MHZ = 100.0;

static float round(float num, int decimals) {
	int shift = pow(10, decimals);
	return (round(shift * num) / shift);
}

template <class PL_CLK_CTRLS_t, class PL_SRC_PLL_CTRLS_t>
class _ClocksBase {
protected:
	PL_CLK_CTRLS_t *PL_CLK_CTRLS[4];
	PL_SRC_PLL_CTRLS_t *PL_SRC_PLL_CTRLS[4];

	float _ref_clk_mhz;

public:
    virtual const float get_pll_mhz(PL_SRC_PLL_CTRLS_t *pll_reg) const = 0;
    virtual const float get_cpu_mhz() const = 0;

	/** This method will return the clock frequency.
	*
	* This method is not exposed to users.
	*
	* Parameters
	* ----------
	* clk_idx : int
	*     The index of the PL clock to be changed, from 0 to 3.
	**/
    const float get_pl_clk(int clk_idx) {
        if (clk_idx > 4 or clk_idx <0) {
            std::cerr << "Valid PL clock index is 0 - 3."<<std::endl;
			exit(EXIT_FAILURE);
    	}

        PL_CLK_CTRLS_t* pl_clk_reg = this->PL_CLK_CTRLS[clk_idx];
        uint32_t src_clk_idx = pl_clk_reg->get_SRCSEL();
        float src_clk_mhz = this->_get_src_clk_mhz(src_clk_idx);
        uint32_t pl_clk_odiv0 = pl_clk_reg->get_DIVISOR0();
        uint32_t pl_clk_odiv1 = pl_clk_reg->get_DIVISOR1();

        return round(src_clk_mhz / (pl_clk_odiv0 * pl_clk_odiv1), 6);
    }



	/** This method sets a PL clock frequency.
	*
	* Users have to specify the index of the PL clock to be changed.
	* For example, for fclk1 (Zynq) or pl_clk_1 (ZynqUltrascale),
	* `clk_idx` is 1.
	*
	* The CPU, and other source clocks, by default, should not get changed.
	*
	* Users have two options:
	* 1. specify the two frequency divider values directly (div0, div1), or
	* 2. specify the clock rate, in which case the divider values will be
	* calculated.
	*
	* Note
	* ----
	* In case `div0` and `div1` are both specified, the parameter `clk_mhz`
	* will be ignored.
	*
	* Parameters
	* ----------
	* clk_idx : int
	*     The index of the PL clock to be changed, from 0 to 3.
	* div0 : int
	*     The first frequency divider value.
	* div1 : int
	*     The second frequency divider value.
	* clk_mhz : float
	*     The clock rate in MHz.
	**/
    void set_pl_clk(
    		unsigned clk_idx,
			unsigned div0=0,
			unsigned div1=0,
			float clk_mhz=DEFAULT_PL_CLK_MHZ
	) {
		if (clk_idx > 4 or clk_idx <0) {
			std::cerr << "Valid PL clock index is 0 - 3."<<std::endl;
			exit(EXIT_FAILURE);
		}

		PL_CLK_CTRLS_t *pl_clk_reg = this->PL_CLK_CTRLS[clk_idx];
        constexpr unsigned div0_width = 6;
        constexpr unsigned div1_width = 6;
        uint32_t src_clk_idx = pl_clk_reg->get_SRCSEL();
        float src_clk_mhz = this->_get_src_clk_mhz(src_clk_idx);

        if (div0 == 0 and div1 == 0) {
            std::pair<uint32_t, uint32_t> ret =
            		this->_get_2_divisors(src_clk_mhz, clk_mhz, div0_width, div1_width);
            div0 = ret.first;
            div1 = ret.second;
        } else if (div0 != 0 and div1 == 0) {
            div1 = round(src_clk_mhz / clk_mhz / div0);
    	} else if (div1 != 0 and div0 == 0) {
            div0 = round(src_clk_mhz / clk_mhz / div1);
    	}

        if (div0 == 0 or div0 > ((1 << div0_width) - 1)) {
            std::cerr << "Frequency divider 0 value out of range." << std::endl;
			exit(EXIT_FAILURE);
        }
        if (div1 == 0 or div1 > ((1 << div1_width) - 1)) {
        	std::cerr << "Frequency divider 1 value out of range." << std::endl;
			exit(EXIT_FAILURE);
        }

        pl_clk_reg->set_DIVISOR0(div0);
        pl_clk_reg->set_DIVISOR1(div1);
    }

private:
    /** The getter method for PL clock (pl_clk) sources.
	*
    * The returned clock rate is measured in MHz.
    **/
    const float _get_src_clk_mhz(int clk_idx) {
    	PL_SRC_PLL_CTRLS_t *src_pll_reg = this->PL_SRC_PLL_CTRLS[clk_idx];
        return round(this->get_pll_mhz(src_pll_reg), 6);
	}

    /** Return 2 divisors of the specified width for frequency divider.
	*
	* Warning will be raised if the closest clock rate achievable
	* differs more than 1 percent of the desired value.
	*
	* Parameters
	* ----------
	* freq_high : float
	*     High frequency to be divided.
	* freq_desired : float
	*     Desired frequency to be get.
	* reg0_width: int
	*     The register width of the first divisor.
	* reg1_width : int
	*     The register width of the second divisor.
	*
	* Returns
	* -------
	* tuple
	*     A pair of 2 divisors, each of 6 bits at most.
    **/
    std::pair<uint32_t, uint32_t> _get_2_divisors(
    		float freq_high,
			float freq_desired,
			int reg0_width,
			int reg1_width
	) {
        std::pair<uint32_t, uint32_t> ret = std::pair<uint32_t, uint32_t>(1,1);
        float min_gap = freq_high;
        for (int i = 1; i< 1 << reg0_width; ++i) {
            for (int j = i; j< 1 << reg1_width; ++j) {
            	float gap = abs(freq_high/(i*j) - freq_desired);
            	if (gap < min_gap) {
            		ret = std::pair<uint32_t, uint32_t> (i,j);
            		min_gap = gap;
            	}
            }
        }
        uint32_t div_obtained = ret.first * ret.second;
        if (abs(freq_desired - (freq_high / div_obtained)) > 0.01 * freq_desired) {
            std::cerr << "Setting frequency to the closest possible value ";
            std::cerr << round(freq_high / div_obtained, 5) << " MHz" << std::endl;
        }
        return ret;
    }
};

template <typename Clocks_t>
class Clocks_Interface {
	static Clocks_t clocks;
public:
    /// The clock rate of the CPU, measured in MHz.
    static float get_cpu_mhz() { return clocks.get_cpu_mhz(); }
    /// The clock rate of the PL clock 0, measured in MHz.
    static float get_fclk0_mhz() { return clocks.get_pl_clk(0); }
    /// The clock rate of the PL clock 1, measured in MHz.
    static float get_fclk1_mhz() { return clocks.get_pl_clk(1); }
    /// The clock rate of the PL clock 2, measured in MHz.
    static float get_fclk2_mhz() { return clocks.get_pl_clk(2); }
    /// The clock rate of the PL clock 3, measured in MHz.
    static float get_fclk3_mhz() { return clocks.get_pl_clk(3); }

    static void set_fclk_mhz(unsigned idx, float clk_mhz=DEFAULT_PL_CLK_MHZ, unsigned div0=0, unsigned div1=0)
    	{ return clocks.set_pl_clk(idx, div0, div1, clk_mhz); }
};
