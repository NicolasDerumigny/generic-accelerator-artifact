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

subcmv data, data, mean
subcmv data1, data1, mean1
subcmv data2, data2, mean2
noop
