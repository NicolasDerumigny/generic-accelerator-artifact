set0m mean
set0m mean1
set0m mean2
noop

accsumcm mean, data
accsumcm mean1, data1
accsumcm mean2, data2
noop

noop
noop
noop
divvs mean, mean, float_n

noop
noop
noop
divvs mean1, mean1, float_n

noop
noop
noop
divvs mean2, mean2, float_n

set0m stddev
set0m stddev1
set0m stddev2
noop

subcmv data, data, mean
subcmv data1, data1, mean1
subcmv data2, data2, mean2
noop

pmulm tmp1,  data, data
pmulm tmp11, data1, data1
pmulm tmp12, data2, data2
noop

accsumcm stddev, tmp1
accsumcm stddev1, tmp11
accsumcm stddev2, tmp12
noop

noop
noop
noop
divms stddev, stddev, float_n

noop
noop
noop
divms stddev1, stddev1, float_n

noop
noop
noop
divms stddev2, stddev2, float_n

noop
noop
noop
sqrtv stddev, stddev

noop
noop
noop
sqrtv stddev1, stddev1

noop
noop
noop
sqrtv stddev2, stddev2

cutminv stddev, stddev
cutminv stddev1, stddev1
cutminv stddev2, stddev2
noop

mulsv stddev, sqrtfloat_n, stddev
mulsv stddev1, sqrtfloat_n, stddev1
mulsv stddev2, sqrtfloat_n, stddev2
noop

noop
noop
noop
divcmv data, data, stddev

noop
noop
noop
divcmv data1, data1, stddev1

noop
noop
noop
divcmv data2, data2, stddev2

trm tmp1, data
trm tmp11, data1
trm tmp12, data2
noop

mulmm corr, tmp1, data
mulmm corr1, tmp11, data1
mulmm corr2, tmp12, data2
noop

setd1 corr, corr
setd1 corr1, corr1
setd1 corr2, corr2
noop
