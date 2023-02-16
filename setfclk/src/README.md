# setfclk
A simple command-line utility to get/set the frequency of CPU (read-only) and FPGA (read/set) clocks 0 to 3,
compatible with Xilinx's Zynq and Zynq Ultrascale SoC.

## Author:
- Nicolas Derumigny <nicolas.derumigny@inria.fr>

## Usage:
```txt
./setfclk [{-c | --clock} <clock_id>] [{-0 | --div0} <div0>] [{-1 | --div1} <div1>] [{-f | --freq} <freq>] [{-p | --print}] [{-h | --help}]

With:
	{-c | --clock} <clock_id>: sets the target FPGA clock. Valid option are [0-3] (Default: 0)
	{-0 | --div0} <div0>: sets to <div0> the coefficient written to the divisor 0
	{-1 | --div1} <div1>: sets to <div1> the coefficient written to the divisor 1
	{-f | --freq} <freq>: sets the frequency of the clock <clock_id> to <freq> MHz
	{-p | --print}: prints the current operating frequencies
	{-h | --help}: prints this help
```
