################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/correlation.cpp 

OBJS += \
./source/correlation.o 

CPP_DEPS += \
./source/correlation.d 


# Each subdirectory must supply rules for building sources it contributes
source/correlation.o: /home/derumigny/FPGA/data/zcu104/2023-Dac/gemv-max-throughput/src/correlation.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/opt/Xilinx/Vitis_HLS/2022.2/lnx64/tools/systemc/include -I/opt/Xilinx/Vitis_HLS/2022.2/include/ap_sysc -I/opt/Xilinx/Vitis_HLS/2022.2/include/etc -I/opt/Xilinx/Vitis_HLS/2022.2/include -I/opt/Xilinx/Vitis_HLS/2022.2/lnx64/tools/auto_cc/include -I/home/derumigny/FPGA/data/zcu104/2023-Dac -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


