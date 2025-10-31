module button_demux(
    input In,
    input [1:0] sel,
    output reg A,
    output reg B,
    output reg C,
    output reg D
    );
    
    always @(*) begin
        case(sel)
            2'b00: {A, B, C, D} <= {In, 1'b0, 1'b0, 1'b0};
            2'b01: {A, B, C, D} <= {1'b0, In, 1'b0, 1'b0};
            2'b10: {A, B, C, D} <= {1'b0, 1'b0, In, 1'b0};
            2'b11: {A, B, C, D} <= {1'b0, 1'b0, 1'b0, In};
        endcase
    end
    
endmodule
