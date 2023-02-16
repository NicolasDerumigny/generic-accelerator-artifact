mulsv r1, r0, r1
mulsv r11, r10, r11

oprodv r3, r2, r1
oprodv r13, r12, r11

addm r3, r2, r3
addm r13, r12, r13

mulsv r1, r0, r1
noop

oprodv r3, r2, r1
noop

addm r3, r2, r3
noop
