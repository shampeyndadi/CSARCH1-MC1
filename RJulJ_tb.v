//Name: JULIAN, Jedidiah | Section: S17

`timescale 1ps/1ps

module RJulJ_tb();
    wire t_F;
    reg [3:0] t_input;
    integer i;

    RJulJ dut(t_f,t_input[3], t_input[2], t_input[1], t_input[0]);

    initial 
        begin
            t_input = 4'b0000;
            for (i = 1; i <= 16; i++)
                #10 t_input  = i;
        end

    initial
        begin
            $display("Program by Jedidiah Julian | S17 using Gate-level model");
            $display("Boolean Function: F(A,B,C,D) = Product of Maxterm/piM(0,1,2,8,10,12,14)");
            $monitor("time = %03d ABCD=%b Output=%b", $time, t_input, t_f);
            $dumpfile("RJulJ.vcd");
            $dumpvars();
        end
endmodule
