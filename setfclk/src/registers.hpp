template<class Field_t, uintptr_t offset>
struct Register {
	Field_t *const field;
	Register(void *base_addr) : field((Field_t *const) ((uintptr_t) base_addr + offset)) {}
};

#define bit(name, offset, width) \
	const uint32_t get_ ## name() const {\
		return (this->_raw >> offset) & ((1 << (width+1)) - 1);\
	}\
	void set_ ## name(uint32_t value) {\
		uint32_t org = (this->_raw) & (~(((1 << (width+1)) - 1) << offset ));\
		this->_raw = org | (value << offset);\
	}
