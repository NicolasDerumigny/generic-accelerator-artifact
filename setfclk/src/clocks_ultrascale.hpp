#include "clocks_base.hpp"
#include "registers_zynqmp.hpp"

/** Implementation class for all Zynq Ultrascale PS and PL clocks
* not exposed to users.
*
* Since this is the abstract base class for all Zynq Ultrascale clocks, no
* attributes or methods are exposed to users. Users should use the class
* `Clocks` instead.
**/
class _ClocksUltrascale: public _ClocksBase <ZU_CLK_FIELDS, ZU_PLL_FIELDS>{
    static constexpr float DEFAULT_SRC_CLK_MHZ = 33.333;
    static constexpr uintptr_t CRL_APB_ADDRESS = 0xFF5E0000;
    static constexpr uintptr_t CRF_APB_ADDRESS = 0xFD1A0000;
    static constexpr int CRX_APB_SRC_DEFAULT = 0;
    static constexpr int PLX_CTRL_SRC_DEFAULT = 0;

    ZU_PLL_FIELDS *ACPU_SRC_PLL_CTRLS[4];

    MMIO _crf_mmio;
    MMIO _crl_mmio;

    ZU_CRF_REGISTERS _crf_registers;
    ZU_CRL_REGISTERS _crl_registers;

public:
    _ClocksUltrascale(float src_clk_mhz=33.333) :
    	_crf_mmio(MMIO(this->CRF_APB_ADDRESS, 0x100)),
		_crl_mmio(MMIO(this->CRL_APB_ADDRESS, 0x100)),
		_crf_registers(ZU_CRF_REGISTERS(_crf_mmio.memory())),
		_crl_registers(ZU_CRL_REGISTERS(_crl_mmio.memory()))
    {
        this->_ref_clk_mhz = src_clk_mhz;

        this->PL_CLK_CTRLS[0] = this->_crl_registers.PL0_REF_CTRL.field;
		this->PL_CLK_CTRLS[1] = this->_crl_registers.PL1_REF_CTRL.field;
		this->PL_CLK_CTRLS[2] = this->_crl_registers.PL2_REF_CTRL.field;
		this->PL_CLK_CTRLS[3] = this->_crl_registers.PL3_REF_CTRL.field;

		this->PL_SRC_PLL_CTRLS[0] = this->_crl_registers.IOPLL_CTRL.field;
		this->PL_SRC_PLL_CTRLS[1] = nullptr;
		this->PL_SRC_PLL_CTRLS[2] = this->_crl_registers.RPLL_CTRL.field;
		this->PL_SRC_PLL_CTRLS[3] = this->_crf_registers.DPLL_CTRL.field;

		this->ACPU_SRC_PLL_CTRLS[0] = this->_crf_registers.APLL_CTRL.field;
		this->ACPU_SRC_PLL_CTRLS[1] = nullptr;
		this->ACPU_SRC_PLL_CTRLS[2] = this->_crf_registers.DPLL_CTRL.field;
		this->ACPU_SRC_PLL_CTRLS[3] = this->_crf_registers.VPLL_CTRL.field;
    }

	/** This method sets a PL clock frequency.
	*
	* Users have to specify the index of the PL clock to be changed.
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
    	ZU_CLK_FIELDS *pl_clk_reg = this->PL_CLK_CTRLS[clk_idx];
        pl_clk_reg->set_CLKACT(1);
        // Not sure, inferred from Python source code
        pl_clk_reg->set_SRCSEL(this->PLX_CTRL_SRC_DEFAULT);
        _ClocksBase::set_pl_clk(clk_idx, div0, div1, clk_mhz);
    }

	/** The getter method for PLL output clocks.
	*
	* Parameters
	* ----------
	* pll_reg : Register
	*     The control register for a PLL
	*
	* Returns
	* -------
	* float
	*     The PLL output clock rate measured in MHz.
	**/
    const float get_pll_mhz(ZU_PLL_FIELDS *pll_reg) const {
        if (pll_reg->get_PRE_SRC() != this->CRX_APB_SRC_DEFAULT) {
            std::cerr <<"Invalid PLL Source" << std::endl;
            exit(EXIT_FAILURE);
        }

        uint32_t pll_fbdiv = pll_reg->get_FBDIV();
        uint32_t pll_odiv2;
        if (pll_reg->get_DIV2()) {
            pll_odiv2 = 2;
        } else {
            pll_odiv2 = 1;
        }

        return this->_ref_clk_mhz * pll_fbdiv / pll_odiv2;
    }

    /**
     * The getter method for CPU clock.
     *
     * The returned clock rate is measured in MHz.
     **/
    const float get_cpu_mhz() const {
    	ZU_ARM_FIELDS *acpu_reg = this->_crf_registers.ACPU_CTRL.field;
        uint32_t arm_src_pll_idx = acpu_reg->get_SRCSEL();
        uint32_t arm_clk_odiv = acpu_reg->get_DIVISOR0();
        ZU_PLL_FIELDS *src_pll_reg = this->ACPU_SRC_PLL_CTRLS[arm_src_pll_idx];
        return round(this->get_pll_mhz(src_pll_reg) / arm_clk_odiv, 6);
    }
};

using Clocks = Clocks_Interface<_ClocksUltrascale>;
