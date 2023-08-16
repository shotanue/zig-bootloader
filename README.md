# zig-bootloader

A toy bootloader written in zig.

## requirements

- zig
- qemu

## Host environment

macOS 13.5 arm64

## how to run

Build bootloader.
```bash
zig build
```

Download ovmf for aach64.(using dep package)
```bash
./getOvmf.sh
```

Run bootloader on qemu.
```bash
./run.sh
```

