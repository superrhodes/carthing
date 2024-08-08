#!/bin/bash

UBOOT_BIN=u-boot/u-boot.bin
NAND_IMG=./nand.img

qemu-system-aarch64 \
    -M virt \
    -cpu cortex-a53 \
    -smp 4 \
    -m 512M \
    -bios $UBOOT_BIN \
    -d unimp,guest_errors \
    -D qemu.log \
    -device usb-ehci,id=ehci 