#!/bin/bash
qemu-system-aarch64 \
    -M virt \
    -cpu cortex-a53 \
    -kernel u-boot/u-boot.bin \
    -serial mon:stdio \
   -append "console=ttyAMA0,115200 earlyprintk loglevel=8" \
    -d unimp,guest_errors \
    -D qemu.log \
    -monitor none