#!/bin/bash
set -x

# unload vfio-pci
modprobe -r vfio_pci vfio_type1 vfio

# load nouveau
virsh nodedev-reattach pci_0000_01_00_0
virsh nodedev-reattach pci_0000_01_00_1
virsh nodedev-reattach pci_0000_01_00_2
virsh nodedev-reattach pci_0000_01_00_3

# Re-Bind GPU to Nvidia Driver
echo "efi-framebuffer.0" > /sys/bus/platform/drivers/efi-framebuffer/bind


nvidia-xconfig --query-gpu-info > /dev/null 2>&1

echo 1 > /sys/class/vtconsole/vtcon0/bind
echo 1 > /sys/class/vtconsole/vtcon1/bind

startx
