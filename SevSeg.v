module SevSeg ( 
    input wire [3:0] HEX_2_disp, 
    output wire [7:0] segment
);
    reg [7:0] r_7LED; // Declare r_7LED as a reg

    always @(*) begin
        case (HEX_2_disp)
            4'b0000: r_7LED = 8'b11000000; // Display 0
            4'b0001: r_7LED = 8'b11111001; // Display 1
            4'b0010: r_7LED = 8'b10100100; // Display 2
            4'b0011: r_7LED = 8'b10110000; // Display 3
            4'b0100: r_7LED = 8'b10011001; // Display 4
            4'b0101: r_7LED = 8'b10010010; // Display 5
            4'b0110: r_7LED = 8'b10000010; // Display 6
            4'b0111: r_7LED = 8'b11111000; // Display 7
            4'b1000: r_7LED = 8'b10000000; // Display 8
            4'b1001: r_7LED = 8'b10010000; // Display 9
            4'b1010: r_7LED = 8'b10001000; // Display A
            4'b1011: r_7LED = 8'b10000011; // Display B
            4'b1100: r_7LED = 8'b11000110; // Display C
            4'b1101: r_7LED = 8'b10100001; // Display D
            4'b1110: r_7LED = 8'b10000110; // Display E
            4'b1111: r_7LED = 8'b10001110; // Display F
            default: r_7LED = 8'b11111111; // Turn off the LED for unknown inputs
        endcase
    end

    assign segment = r_7LED;
endmodule
