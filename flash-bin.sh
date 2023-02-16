#!/bin/bash
if [ "$1" == "" ]; then
	echo "Usage: $0 <bitstream.bin>"
	exit
fi
if [ "$USER" != "root" ]; then
	echo "Flashing the firmware requires root privileges"
	exit
fi
# Control whether the bitstream will use
# partial reconfiguration (1) or not (0)
FLAGS=/sys/class/fpga_manager/fpga0/flags
FIRMWARE_DIR=/lib/firmware/
FIRMWARE_CONF=/sys/class/fpga_manager/fpga0/firmware

cp $1 ${FIRMWARE_DIR}/bitstream.bin
echo 0 > $FLAGS
echo bitstream.bin > $FIRMWARE_CONF
