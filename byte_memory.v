module byte_memory
#(
    parameter BIT_COUNT = 8
)
(
    input [7:0] data,
    input store,
    output [7:0] memory
);
    
    genvar i;
    generate
        for (i = 0; i < BIT_COUNT; i = i +1) begin
            D_Latch inst(
                .D(data[i]),
                .E(store),
                .Q(memory[i])
            );
        end
     endgenerate
endmodule