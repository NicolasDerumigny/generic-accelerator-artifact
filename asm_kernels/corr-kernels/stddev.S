set0m mean
noop
noop
noop

accsumcm mean, data
noop
noop
noop

noop
noop
noop
divvs mean, mean, float_n

set0m stddev
noop
noop
noop

subcmv data, data, mean
noop
noop
noop

pmulm tmp1, data, data
noop
noop
noop

accsumcm stddev, tmp1
noop
noop
noop

noop
noop
noop
divms stddev, stddev, float_n

noop
noop
noop
sqrtv stddev, stddev

