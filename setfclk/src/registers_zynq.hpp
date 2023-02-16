#include "registers.hpp"

class ZYNQ_PLL_FIELDS {
	uint32_t _raw;
public:
	/// Provide the feedback divisor for the PLL
	bit(PLL_FDIV, 12, 7)
};

class ZYNQ_ARM_FIELDS {
	uint32_t _raw;
public:
	/// Source for the CPU clock
	bit(SRCSEL, 4, 2)
	/// Frequency divisor for the CPU clock
	bit(DIVISOR, 8, 6)
};

class ZYNQ_CLK_FIELDS {
	uint32_t _raw;
public:
	/// Select the source for the clock
	bit(SRCSEL, 4, 2)
	/// First divisor of the clock source
	bit(DIVISOR0, 8, 6)
	/// Second divisor of the clock source
	bit(DIVISOR1, 20, 6)
};

struct ZYNQ_SLCR_REGISTERS {
	/// ARM PLL Control
	Register<ZYNQ_PLL_FIELDS, 0x100> ARM_PLL_CTRL;
	/// DDR PLL Control
	Register<ZYNQ_PLL_FIELDS, 0x104> DDR_PLL_CTRL;
	/// IO PLL Control
	Register<ZYNQ_PLL_FIELDS, 0x108> IO_PLL_CTRL;
	/// CPU Clock Control
	Register<ZYNQ_ARM_FIELDS, 0x120> ARM_CLK_CTRL;
    /// PL Clock 0 Control
	Register<ZYNQ_CLK_FIELDS, 0x170> FPGA0_CLK_CTRL;
    /// PL Clock 1 Control
	Register<ZYNQ_CLK_FIELDS, 0x180> FPGA1_CLK_CTRL;
    /// PL Clock 2 Control
	Register<ZYNQ_CLK_FIELDS, 0x190> FPGA2_CLK_CTRL;
    /// PL Clock 3 Control
	Register<ZYNQ_CLK_FIELDS, 0x1a0> FPGA3_CLK_CTRL;

	ZYNQ_SLCR_REGISTERS(void *base_addr) :
		ARM_PLL_CTRL(Register<ZYNQ_PLL_FIELDS, 0x100>(base_addr)),
		DDR_PLL_CTRL(Register<ZYNQ_PLL_FIELDS, 0x104>(base_addr)),
		IO_PLL_CTRL(Register<ZYNQ_PLL_FIELDS, 0x108>(base_addr)),
		ARM_CLK_CTRL(Register<ZYNQ_ARM_FIELDS, 0x120>(base_addr)),
		FPGA0_CLK_CTRL(Register<ZYNQ_CLK_FIELDS, 0x170>(base_addr)),
		FPGA1_CLK_CTRL(Register<ZYNQ_CLK_FIELDS, 0x180>(base_addr)),
		FPGA2_CLK_CTRL(Register<ZYNQ_CLK_FIELDS, 0x190>(base_addr)),
		FPGA3_CLK_CTRL(Register<ZYNQ_CLK_FIELDS, 0x1a0>(base_addr))
	{}
};
