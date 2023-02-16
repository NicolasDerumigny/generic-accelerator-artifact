#include "clocks_base.hpp"
#include "registers_zynq.hpp"

/** Implementation class for all Zynq 7-Series PS and PL clocks
* not exposed to users.
*
* Since this is the abstract base class for all Zynq 7-Series clocks, no
* attributes or methods are exposed to users. Users should use the class
* `Clocks` instead.
**/
class _ClocksZynq : public _ClocksBase<ZYNQ_CLK_FIELDS, ZYNQ_PLL_FIELDS> {
	static constexpr float DEFAULT_SRC_CLK_MHZ = 50.0;
	static constexpr uintptr_t SLCR_BASE_ADDRESS = 0xF8000000;

	ZYNQ_PLL_FIELDS *ARM_SRC_PLL_CTRLS[4];

	MMIO _slcr_mmio;
	ZYNQ_SLCR_REGISTERS _slcr_registers;

public:
	_ClocksZynq(float ref_clk_mhz=50.0) :
		_slcr_mmio(MMIO(SLCR_BASE_ADDRESS, 0x200)),
		_slcr_registers(ZYNQ_SLCR_REGISTERS(this->_slcr_mmio.memory())) {
		this->_ref_clk_mhz = ref_clk_mhz;


		this->PL_CLK_CTRLS[0] = this->_slcr_registers.FPGA0_CLK_CTRL.field;
		this->PL_CLK_CTRLS[1] = this->_slcr_registers.FPGA1_CLK_CTRL.field;
		this->PL_CLK_CTRLS[2] = this->_slcr_registers.FPGA2_CLK_CTRL.field;
		this->PL_CLK_CTRLS[3] = this->_slcr_registers.FPGA3_CLK_CTRL.field;

		this->PL_SRC_PLL_CTRLS[0] = this->_slcr_registers.IO_PLL_CTRL.field;
		this->PL_SRC_PLL_CTRLS[1] = this->_slcr_registers.IO_PLL_CTRL.field;
		this->PL_SRC_PLL_CTRLS[2] = this->_slcr_registers.ARM_PLL_CTRL.field;
		this->PL_SRC_PLL_CTRLS[3] = this->_slcr_registers.DDR_PLL_CTRL.field;

		this->ARM_SRC_PLL_CTRLS[0] = this->_slcr_registers.ARM_PLL_CTRL.field;
		this->ARM_SRC_PLL_CTRLS[1] = this->_slcr_registers.ARM_PLL_CTRL.field;
		this->ARM_SRC_PLL_CTRLS[2] = this->_slcr_registers.DDR_PLL_CTRL.field;
		this->ARM_SRC_PLL_CTRLS[3] = this->_slcr_registers.IO_PLL_CTRL.field;
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
	const float get_pll_mhz(ZYNQ_PLL_FIELDS *pll_reg) const {
		uint32_t pll_fbdiv = pll_reg->get_PLL_FDIV();
		float clk_mhz = this->_ref_clk_mhz * pll_fbdiv;

		return round(clk_mhz, 6);
	}

	/** The getter method for the CPU clock.
	*
	* Returns
	* -------
	* float
	*     The CPU clock rate measured in MHz.
	**/
	const float get_cpu_mhz() const {
		ZYNQ_ARM_FIELDS *cpu_ctrl_reg = this->_slcr_registers.ARM_CLK_CTRL.field;
		uint32_t arm_src_pll_idx = cpu_ctrl_reg->get_SRCSEL();
		uint32_t arm_clk_odiv = cpu_ctrl_reg->get_DIVISOR();
		ZYNQ_PLL_FIELDS *src_pll_reg = this->ARM_SRC_PLL_CTRLS[arm_src_pll_idx];
		return round(this->get_pll_mhz(src_pll_reg) / arm_clk_odiv, 6);
	}
};

using Clocks = Clocks_Interface<_ClocksZynq>;
