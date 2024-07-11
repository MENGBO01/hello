const std = @import("std");

const Method = enum { get, post };

const user = struct {
     name: u16
};

pub fn main() !void {
    const a = Method.get;
    if (a == Method.get) {
        std.log.debug("{any}", .{a});
    }
    std.log.debug("{any}", .{@bitSizeOf(user)});

    std.log.debug("{any}", .{user});

}

// std.debug.print("All your {s} are belong to us.\n", .{"codebase"});
// std.debug.print("name is {any} \n", .{method.get});
//
// const stdout_file = std.io.getStdOut().writer();
// var bw = std.io.bufferedWriter(stdout_file);
// const stdout = bw.writer();
// try stdout.print("1111111111111111111111\n", .{});
// try bw.flush(); // don't forget to flush!
