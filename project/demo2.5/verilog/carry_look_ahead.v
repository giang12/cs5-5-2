module carry_look_ahead (c0, p0, g0, p1, g1, p2, g2, p3, g3, c1, c2, c3, c4, pg, gg);
    input c0, p0, g0, p1, g1, p2, g2, p3, g3;
    output c1, c2, c3, c4, pg, gg;
    assign c1 = g0 | (p0 & c0);
    assign c2 = g1 | (g0 & p1) | (c0 & p0 & p1);
    assign c3 = g2 | (g1 & p2) | (g0 & p1 & p2) | (c0 & p0 & p1 & p2);
    assign c4 = g3 | (g2 & p3) | (g1 & p2 & p3) | (g0 & p1 & p2 & p3) | (c0 & p0 & p1 & p2 & p3);
    assign pg = p0 & p1 & p2 & p3;
    assign gg = g3 | (g2 & p3) | (g1 & p3 & p2) | (g0 & p3 & p2 & p1);
endmodule

    
