module MC1(F, A, B, C, D);
    input A,B,C,D;
    output F;
    wire w1,w2,w3,w4, w5, w6, w7;

    or (w1, A, B, C, D);
    or (w2, A, B, C, ~D);
    or (w3, A, B, ~C, D);
    or (w4, ~A, B, C, D);
    or (w5, ~A, B, ~C, D);
    or (w6, ~A, ~B, C, D);
    or (w7, ~A, ~B, ~C, D);

    and (w1, w2, w3, w4, w5, w6, w7);



endmodule