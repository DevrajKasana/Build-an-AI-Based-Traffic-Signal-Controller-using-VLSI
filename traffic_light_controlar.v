
module traffic_light_ctrl (
    input wire [2:0] count,

    output reg red,
    output reg yellow,
    output reg green
);

    always @(*) begin

        red = 0;
        yellow = 0;
        green = 0;

        case (count)

            3'd0, 3'd1, 3'd2:
                green = 1;

            3'd3:
                yellow = 1;

            3'd4, 3'd5, 3'd6:
                red = 1;

            3'd7:
                yellow = 1;

            default:
                red = 1;

        endcase

    end

endmodule

