module clu_16bit(CO, CI, P, G);
    input [15:0] P, G;
    input CI; 
    output [15:0] CO;
    wire tmp;
    wire [3:0] w1, w2, w3;
    assign CO[11:0] = {w1, w2, w3};
    
    clu_4bit clu0 (.PG(tmp), .GG(tmp), .CI(CI), .CO(w1[3:0]), .P(P[3:0]), .G(G[3:0]));
    clu_4bit clu1 (.PG(tmp), .GG(tmp), .CI(w1[3]), .CO(w2[3:0]), .P(P[7:4]), .G(G[7:4]));
    clu_4bit clu2 (.PG(tmp), .GG(tmp), .CI(w2[3]), .CO(w3[3:0]), .P(P[11:8]), .G(G[11:8]));
    clu_4bit clu3 (.PG(tmp), .GG(tmp), .CI(w3[3]), .CO(CO[15:12]), .P(P[15:12]), .G(G[15:12]));

endmodule

