#! /bin/sh

curl -sSl http://ftp.jp.debian.org/debian/pool/main/e/edk2/qemu-efi-aarch64_2023.05-1_all.deb >source.deb

ar -x ./source.deb
tar -xf ./source.deb
#rm ./*.fd
# cp ./usr/share/AAVMF/AAVMF_CODE.fd ./AAVMF_CODE.fd
# cp ./usr/share/AAVMF/AAVMF_VARS.fd ./AAVMF_VARS.fd

# cp ./usr/share/qemu-efi-aarch64/QEMU_EFI.fd ./QEMU_EFI.fd

# cleanup
# rm ./*.tar.xz
