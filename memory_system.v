module memory_system(
        input store,
        input [7:0] data,
        input [1:0] addr,
        output [7:0] memory
    );
    
    wire [7:0] input_bits [3:0];
    wire [3:0] button_bit;
    wire [7:0] output_bits [3:0];
    
    demux data_demux(
        .In(data),
        .sel(addr),
        .A(input_bits[0]),
        .B(input_bits[1]),
        .C(input_bits[2]),
        .D(input_bits[3])
    );
    
    button_demux button(
        .In(store),
        .sel(addr),
        .A(button_bit[0]),
        .B(button_bit[1]),
        .C(button_bit[2]),
        .D(button_bit[3])
    );
    
    byte_memory byte_0(
        .data(input_bits[0]),
        .store(button_bit[0]),
        .memory(output_bits[0])
    );
    
    byte_memory byte_1(
        .data(input_bits[1]),
        .store(button_bit[1]),
        .memory(output_bits[1])
    );
    
    byte_memory byte_2(
        .data(input_bits[2]),
        .store(button_bit[2]),
        .memory(output_bits[2])
    );
    
    byte_memory byte_3(
        .data(input_bits[3]),
        .store(button_bit[3]),
        .memory(output_bits[3])
    );
    
    mux output_mux(
        .A(output_bits[0]),
        .B(output_bits[1]),
        .C(output_bits[2]),
        .D(output_bits[3]),
        .Sel(addr),
        .Y(memory)
    );
    
endmodule
