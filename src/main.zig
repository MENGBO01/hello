const std = @import("std");

const Method = enum { get, post };

const user = struct { name: u16 };

pub fn main() !void {
    const a = Method.get;
    if (a == Method.get) {
        std.log.debug("{any}", .{a});
    }
    std.log.debug("{any}", .{@bitSizeOf(user)});
    std.log.debug("{any}", .{user});
}
