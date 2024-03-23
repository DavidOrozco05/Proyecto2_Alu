`timescale 1ns / 1ps
module Shift_Unit #(parameter N=8)(
    input [7:0] dataa,
    input [1:0] shamt,
    output reg [7:0] dataout
);

always @(*) begin
    case (shamt)
        2'b00: dataout = dataa; // No hay desplazamiento
        2'b01: dataout = {1'b0, dataa[7:1]}; // desplazamiento a la derecha
        2'b10: dataout = {dataa[6:0], 1'b0}; // desplazamiento a la izquierda
        default: dataout = {N{1'b0}}; 
    endcase
end

endmodule