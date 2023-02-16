# Generic-Accelerator Artifact

Artifact for the Generic Accelerator FPGA design

# Organisation
- `asm_kernels`: benchmark to be executed on FPGA
- `baselines`: Vitis HLS project for Max-Throughput and Max-Sharing design measurements
- `bitstreams`: bitstreams of the LA-GA and CORR-GA accelerators
- `center-cgp-example`: Vitis HLS project used for the generation of the motivating example
- `generic-accel-glue-measure`: Vivado HLS project used for measurement of ZCU104 resource overhead
- `generic-accel.ods`: File containing the measurements.
- `setfclk`: Vitis Application to fix the FPGA clock generator frequency.
- `hls-projects`: Vitis HLS project of the Generic Accelerators.
- `vivado-projects`: Vivado project of the Generic Accelerators.
- `flash-bin.sh`: Script to flash a bitstream from a booted Linux running on a PYNQ-compatible MPSoC
- `README.md`: This file.

# Usage
## Baseline measurements
- Open with Vitis HLS the projects inside `baselines`.
- Perform HLS synthesis, then RTL + Place and Route Implementation.
- Report Vitis' computed resource usage and cycle estimates.

## Bitstream generation
- Open with Vitis HLS the corresponding project in `hls-project`
- Synthetize the RTL and export it as a Vivado IP.
- Open the corresponding Vivado project in `vivado-project`.
- Add the HLS project as an external repository, then generate the bitstream.
- Report area usage as given by Vivado

## Execution time measurement
- Fix the ZCU104 frequency to 100 MHz (either using Vivado or the `setfclk` application, with `setfclk -c 1 -f 100; setfclk -c 2 -f 100 ; setfclk -c 3 -f 100 ; setfclk -c 0 -f 100`).
- Flash the LA-GA or the CORR-GA bitstream on a ZCU104 board using `./flash-bin.sh <bitstream.bit.bin>` on the onboard Linux.
- Transfer the application in `hls-project/accel-xxx-hls/app` on the ZCU104, as well as the benchmark (for example `asm_kernels/corr-kernels/center-batched.S`) and rename it to prgm.S.
/!\ The applications are different for the LA-GA and the CORR-GA!
- Run `make && ./generic_accel.elf` as root and report the number of cycles.
