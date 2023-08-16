#! /bin/sh

# AAVMF_CODE.fd  AAVMF_VARS.fd  build.zig  efi  getOvmf.sh  main.zig  QEMU_EFI.fd  RE

# qemu-system-aarch64 \
# 	-bios ./QEMU_EFI.fd \
# 	-net none \
# 	-drive file=fat:rw:./efi,format=raw \
# 	-d guest_errors

# https://zenn.dev/link/comments/568e864518212b
qemu-system-aarch64 \
	-M virt \
	-cpu cortex-a57 \
	-bios ./QEMU_EFI.fd \
	-net none \
	-drive file=fat:rw:./EFI,format=raw \
	-d guest_errors \
	-serial stdio
