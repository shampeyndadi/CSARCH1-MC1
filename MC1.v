`timescale 1ps/1ps

module MC1(F, A, B, C, D);

    input A,B,C,D;
    output F;
    wire w1,w2,w3,w4,w5,w6,w7;

    or G1(w1, A, B, C, D);
    or G2(w2, A, B, C, ~D);
    or G3(w3, A, B, ~C, D);
    or G4(w4, ~A, B, C, D);
    or G5(w5, ~A, B, ~C, D);
    or G6(w6, ~A, ~B, C, D);
    or G7(w7, ~A, ~B, ~C, D);

    and G8(F, w1, w2, w3, w4, w5, w6, w7);
    
endmodule