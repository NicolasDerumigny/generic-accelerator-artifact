#include "registers.hpp"

class ZU_PLL_FIELDS {
	uint32_t _raw;
public:
	/// Feedback divisor for the PLL
	bit(FBDIV, 8, 7)
	/// Divide output frequency by 2
	bit(DIV2, 16, 1)
	/// Select the clock source for the PLL input
	bit(PRE_SRC, 20, 3)
};


class ZU_CLK_FIELDS {
	uint32_t _raw;
public:
	/// Clock generator input source
	bit(SRCSEL, 0, 3)
	/// First divisor of the clock source
	bit(DIVISOR0, 8, 6)
	/// Second divisor of the clock source
	bit(DIVISOR1, 16, 6)
	/// Enable the clock output
	bit(CLKACT, 24, 1)
};

class ZU_ARM_FIELDS {
	uint32_t _raw;
public:
	/// Clock generator input source
	bit(SRCSEL, 0, 3)
	/// First divisor of the clock source
	bit(DIVISOR0, 8, 6)
};

struct ZU_CRL_REGISTERS {
	/// IOPLL Clock Unit Control
	Register<ZU_PLL_FIELDS, 0x20> IOPLL_CTRL;
	/// RPLL Clock Unit Control
	Register<ZU_PLL_FIELDS, 0x30> RPLL_CTRL;
	/// PL Clock 0 Control
	Register<ZU_CLK_FIELDS, 0xC0> PL0_REF_CTRL;
	/// PL Clock 1 Control
	Register<ZU_CLK_FIELDS, 0xC4> PL1_REF_CTRL;
	/// PL Clock 2 Control
	Register<ZU_CLK_FIELDS, 0xC8> PL2_REF_CTRL;
	/// PL Clock 3 Control
	Register<ZU_CLK_FIELDS, 0xCC> PL3_REF_CTRL;

	ZU_CRL_REGISTERS(void *base_addr) :
		IOPLL_CTRL(Register<ZU_PLL_FIELDS, 0x20> (base_addr)),
		RPLL_CTRL(Register<ZU_PLL_FIELDS, 0x30> (base_addr)),
		PL0_REF_CTRL(Register<ZU_CLK_FIELDS, 0xC0> (base_addr)),
		PL1_REF_CTRL(Register<ZU_CLK_FIELDS, 0xC4> (base_addr)),
		PL2_REF_CTRL(Register<ZU_CLK_FIELDS, 0xC8> (base_addr)),
		PL3_REF_CTRL(Register<ZU_CLK_FIELDS, 0xCC> (base_addr))
	{}
};

struct ZU_CRF_REGISTERS {
	/// APLL Clock Unit Control
	Register<ZU_PLL_FIELDS, 0x20> APLL_CTRL;
	/// DPLL Clock Unit Control
	Register<ZU_PLL_FIELDS, 0x2C> DPLL_CTRL;
	/// VPLL Clock Unit Control
	Register<ZU_PLL_FIELDS, 0x38> VPLL_CTRL;
	/// CPU Clock Control
	Register<ZU_ARM_FIELDS, 0x60> ACPU_CTRL;

	ZU_CRF_REGISTERS(void *base_addr) :
		APLL_CTRL(Register<ZU_PLL_FIELDS, 0x20> (base_addr)),
		DPLL_CTRL(Register<ZU_PLL_FIELDS, 0x2C> (base_addr)),
		VPLL_CTRL(Register<ZU_PLL_FIELDS, 0x38> (base_addr)),
		ACPU_CTRL(Register<ZU_ARM_FIELDS, 0x60> (base_addr))
	{}
};
