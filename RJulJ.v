//Name: JULIAN, Jedidiah | Section: S17

`timescale 1ns/1ps

module RJulJ(F, A, B, C, D);

    input A,B,C,D;
    output F;
    wire w1,w2,w3,w4,w5,w6,w7;
    wire A_prime, B_prime, C_prime, D_prime;

    // Complements
    not G1(A_prime, A);
    not G2(B_prime, B);
    not G3(C_prime, C);
    not G4(D_prime, D);

    or G5(w1, A, B, C, D); // 0
    or G6(w2, A, B, C, D_prime); // 1
    or G7(w3, A, B, C_prime, D); // 2
    or G8(w4, A_prime, B, C, D); // 8
    or G9(w5, A_prime, B, C_prime, D); // 10
    or G10(w6, A_prime, B_prime, C, D); // 12
    or G11(w7, A_prime, B_prime, C_prime, D); // 14

    and G12(F, w1, w2, w3, w4, w5, w6, w7); 
    
endmodule