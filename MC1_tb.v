module MC1_tb();
    wire t_F;
    reg [3:0] t_input;
    integer i;

    MC1 dut(t_f,t_input[3], t_input[2], t_input[1], t_input[0]);

    initial 
        begin
            t_input = 4'b0000;
            for (i = 1; i <= 15; i++)
                #10 t_input  = i;
        end

    initial
        begin
            $display("Program by JKJulian using Gate-level modelling");
            $monitor("time = %03d ABDCD=%b F=%b", $time, t_input, t_f);
            $dumpfile("MC1.vcd");
            $dumpvars();
        end
endmodule