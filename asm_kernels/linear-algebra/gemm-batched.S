mulsm r1, r0, r1
mulsm r11, r10, r11

mulmm r2, r1, r2
mulmm r12, r11, r12

mulsm r3, r0, r3
mulsm r13, r10, r13

addm r2, r3, r2
addm r12, r13, r12

mulsm r1, r0, r1
noop

mulmm r2, r1, r2
mulsm r3, r0, r3

addm r2, r3, r2
noop
