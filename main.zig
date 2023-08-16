const std = @import("std");
const uefi = @import("std").os.uefi;

pub fn main() !void {
    const system_table = uefi.system_table;
    const stdout = system_table.BootServices.con_out;

    try stdout.clear();
    try stdout.outputString("Hello, World from UEFI!\n");

    return null;
}
