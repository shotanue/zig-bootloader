const std = @import("std");
const uefi = std.os.uefi;

var con_out: *uefi.protocols.SimpleTextOutputProtocol = undefined;

fn printf(comptime format: []const u8, args: anytype) void {
    var buf: [1024]u8 = undefined;
    const text = std.fmt.bufPrint(&buf, format, args) catch unreachable;
    for (text) |c| {
        con_out.outputString(&[_:0]u16{ c, 0 }).err() catch unreachable;
    }
}

pub fn main() uefi.Status {
    con_out = uefi.system_table.con_out orelse return .Unsupported;
    // const system_table = uefi.system_table;
    // const stdout = system_table.con_out.?;

    var status = con_out.clearScreen();
    if (status != .Success) {
        printf("failed to clear screen: {d}\r\n", .{status});
        return status;
    }
    // if (uefi.Status.Success != result) {}
    printf("Hello, World from UEFI!\n", .{});

    return .Success;
}
