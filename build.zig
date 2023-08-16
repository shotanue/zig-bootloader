const Builder = @import("std").build.Builder;
const Target = @import("std").Target;
const CrossTarget = @import("std").zig.CrossTarget;
const builtin = @import("builtin");

pub fn build(b: *Builder) void {
    const exe = b.addExecutable("BOOTAA64", "main.zig");
    exe.setBuildMode(b.standardReleaseOptions());
    exe.setTarget(CrossTarget{
        .cpu_arch = Target.Cpu.Arch.aarch64,
        .os_tag = Target.Os.Tag.uefi,
        .abi = Target.Abi.msvc,
    });
    // x86
    // exe.setOutputDir("efi/boot");

    // aarch64
    // EFIディレクトリに格納するとマウント時に/EFI始まりにならないので、/EFI/EFIとしている
    exe.setOutputDir("EFI/EFI/BOOT");
    b.default_step.dependOn(&exe.step);
}
