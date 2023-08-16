#! /bin/sh

# cleanup
rm -rf data.tar.xz control.tar.xz debian-binary source.deb usr

curl -sSl http://ftp.jp.debian.org/debian/pool/main/e/edk2/qemu-efi-aarch64_2023.05-1_all.deb >source.deb

ar -xv ./source.deb

tar -xf ./data.tar.xz

cp ./usr/share/AAVMF/AAVMF_CODE.fd ./AAVMF_CODE.fd
cp ./usr/share/AAVMF/AAVMF_VARS.fd ./AAVMF_VARS.fd

cp ./usr/share/qemu-efi-aarch64/QEMU_EFI.fd ./QEMU_EFI.fd

# cleanup
rm -rf data.tar.xz control.tar.xz debian-binary source.deb usr
