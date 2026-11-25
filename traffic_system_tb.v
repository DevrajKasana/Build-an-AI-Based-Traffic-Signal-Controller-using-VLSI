
`timescale 1ns/1ps

module traffic_system_tb;

    reg clk;
    reg reset;

    wire red;
    wire yellow;
    wire green;

    // Instantiate Top Module
    traffic_system_top uut (
        .clk(clk),
        .reset(reset),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test sequence
    initial begin
        reset = 1;

        #10;
        reset = 0;

        #200;

        $stop;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | Reset=%b | Red=%b | Yellow=%b | Green=%b",
                 $time, reset, red, yellow, green);
    end

endmodule

