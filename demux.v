module demux(
    input [7:0] In,
    input [1:0] sel,
    output reg [7:0] A,
    output reg [7:0] B,
    output reg [7:0] C,
    output reg [7:0] D
    );
    
    always @(*) begin
        case(sel)
            2'b00: {A, B, C, D} <= {In, 8'b0, 8'b0, 8'b0};
            2'b01: {A, B, C, D} <= {8'b0, In, 8'b0, 8'b0};
            2'b10: {A, B, C, D} <= {8'b0, 8'b0, In, 8'b0};
            2'b11: {A, B, C, D} <= {8'b0, 8'b0, 8'b0, In};
        endcase
    end
    
endmodule
