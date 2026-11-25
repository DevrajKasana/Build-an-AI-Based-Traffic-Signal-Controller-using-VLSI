
module traffic_system_top (
    input wire clk,
    input wire reset,

    output wire red,
    output wire yellow,
    output wire green
);

    // Internal wire
    wire [2:0] count;

    // Counter Module Instance
    traffic_counter u_counter (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Traffic Light Controller Instance
    traffic_light_ctrl u_ctrl (
        .count(count),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

endmodule

