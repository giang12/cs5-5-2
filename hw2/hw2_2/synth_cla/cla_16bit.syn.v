
module xor2_47 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_46 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_67 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_45 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1, n3, n4, n5, n6, n7, n8;

  AND2X2 U1 ( .A(n4), .B(n6), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(out) );
  AND2X2 U3 ( .A(n7), .B(in2), .Y(n3) );
  INVX1 U4 ( .A(n3), .Y(n4) );
  AND2X2 U5 ( .A(n8), .B(in1), .Y(n5) );
  INVX1 U6 ( .A(n5), .Y(n6) );
  INVX1 U7 ( .A(in1), .Y(n7) );
  INVX1 U8 ( .A(in2), .Y(n8) );
endmodule


module xor2_44 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_43 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_66 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_42 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_41 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_40 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_65 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_39 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_38 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_37 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_64 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_36 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_35 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_34 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_63 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_33 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_32 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_31 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_62 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_30 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_29 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_28 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_61 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_27 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_26 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_25 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_60 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_24 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_23 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX1 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module xor2_22 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX1 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module and2_59 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_21 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_20 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX2 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module xor2_19 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX2 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module and2_58 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_18 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module xor2_17 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX2 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module xor2_16 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX2 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module and2_57 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_15 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_14 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX2 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module xor2_13 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX2 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module and2_56 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_12 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_11 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX2 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module xor2_10 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX2 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module and2_55 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_9 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_8 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX2 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module xor2_7 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX2 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module and2_54 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_6 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_5 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX2 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module xor2_4 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX2 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module and2_53 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_3 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_2 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_1 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1;

  INVX1 U1 ( .A(in1), .Y(n1) );
  XNOR2X1 U2 ( .A(in2), .B(n1), .Y(out) );
endmodule


module and2_52 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module xor2_0 ( out, in1, in2 );
  input in1, in2;
  output out;


  XOR2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_51 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_27 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_50 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_26 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_49 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_25 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_48 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_24 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_47 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_46 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_45 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_44 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_43 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_42 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_41 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_40 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_39 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_23 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_22 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_21 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module and2_38 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_20 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_37 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_19 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_36 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_18 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_35 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_17 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_34 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_33 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_32 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_31 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_30 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_29 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_28 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_27 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_26 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_16 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_15 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_14 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module and2_25 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_13 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_24 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_12 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_23 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_11 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_22 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_10 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_21 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_20 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_19 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_18 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_17 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_16 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_15 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_14 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_13 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_9 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_8 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_7 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module and2_12 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_6 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_11 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_5 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_10 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_4 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_9 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_3 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1, n3, n4;

  AND2X2 U1 ( .A(n4), .B(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(out) );
  INVX1 U3 ( .A(in2), .Y(n4) );
  INVX2 U4 ( .A(in1), .Y(n3) );
endmodule


module and2_8 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_7 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_6 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_5 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_4 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_3 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_2 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_1 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_0 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module or2_2 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_1 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_0 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X1 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module fulladder_15 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1, n1, n2, n3, n4;

  xor2_47 mod1 ( .out(w1), .in1(n3), .in2(Cin) );
  xor2_46 mod2 ( .out(S), .in1(n4), .in2(w1) );
  and2_67 mod3 ( .out(G), .in1(n1), .in2(n3) );
  xor2_45 mod4 ( .out(P), .in1(InA), .in2(InB) );
  BUFX2 U1 ( .A(InA), .Y(n1) );
  INVX1 U2 ( .A(InB), .Y(n2) );
  INVX1 U3 ( .A(n2), .Y(n3) );
  BUFX2 U4 ( .A(n1), .Y(n4) );
endmodule


module fulladder_14 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_44 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_43 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_66 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_42 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_13 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_41 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_40 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_65 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_39 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_12 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_38 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_37 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_64 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_36 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_11 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_35 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_34 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_63 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_33 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_10 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_32 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_31 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_62 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_30 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_9 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_29 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_28 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_61 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_27 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_8 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_26 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_25 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_60 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_24 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_7 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_23 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_22 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_59 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_21 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_6 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_20 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_19 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_58 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_18 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_5 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_17 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_16 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_57 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_15 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_4 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_14 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_13 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_56 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_12 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_3 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_11 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_10 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_55 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_9 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_2 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_8 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_7 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_54 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_6 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_1 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_5 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_4 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_53 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_3 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module fulladder_0 ( S, P, G, InA, InB, Cin );
  input InA, InB, Cin;
  output S, P, G;
  wire   w1;

  xor2_2 mod1 ( .out(w1), .in1(InB), .in2(Cin) );
  xor2_1 mod2 ( .out(S), .in1(InA), .in2(w1) );
  and2_52 mod3 ( .out(G), .in1(InA), .in2(InB) );
  xor2_0 mod4 ( .out(P), .in1(InA), .in2(InB) );
endmodule


module clu_4bit_3 ( PG, GG, CI, .CO({\CO<3> , \CO<2> , \CO<1> , \CO<0> }), 
    .P({\P<3> , \P<2> , \P<1> , \P<0> }), .G({\G<3> , \G<2> , \G<1> , \G<0> })
 );
  input CI, \P<3> , \P<2> , \P<1> , \P<0> , \G<3> , \G<2> , \G<1> , \G<0> ;
  output PG, GG, \CO<3> , \CO<2> , \CO<1> , \CO<0> ;
  wire   n5, n6, n7, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13,
         w14, n2;

  and2_51 mod1 ( .out(w1), .in1(\P<0> ), .in2(CI) );
  or2_27 mod2 ( .out(n7), .in1(\G<0> ), .in2(w1) );
  and2_50 mod3 ( .out(w2), .in1(\P<1> ), .in2(n7) );
  or2_26 mod4 ( .out(n6), .in1(\G<1> ), .in2(w2) );
  and2_49 mod5 ( .out(w3), .in1(\P<2> ), .in2(n6) );
  or2_25 mod6 ( .out(n5), .in1(\G<2> ), .in2(w3) );
  and2_48 mod7 ( .out(w4), .in1(\P<3> ), .in2(n5) );
  or2_24 mod8 ( .out(\CO<3> ), .in1(\G<3> ), .in2(w4) );
  and2_47 mod9 ( .out(w5), .in1(n2), .in2(\P<1> ) );
  and2_46 mod10 ( .out(w6), .in1(\P<2> ), .in2(\P<3> ) );
  and2_45 mod11 ( .out(PG), .in1(w5), .in2(w6) );
  and2_44 mod12 ( .out(w7), .in1(\G<2> ), .in2(\P<3> ) );
  and2_43 mod13 ( .out(w8), .in1(\G<1> ), .in2(\P<3> ) );
  and2_42 mod14 ( .out(w9), .in1(w8), .in2(\P<2> ) );
  and2_41 mod15 ( .out(w10), .in1(\G<0> ), .in2(\P<3> ) );
  and2_40 mod16 ( .out(w11), .in1(\P<2> ), .in2(\P<1> ) );
  and2_39 mod17 ( .out(w12), .in1(w10), .in2(w11) );
  or2_23 mod18 ( .out(w13), .in1(\G<3> ), .in2(w7) );
  or2_22 mod19 ( .out(w14), .in1(w9), .in2(w12) );
  or2_21 mod20 ( .out(GG), .in1(w13), .in2(w14) );
  BUFX2 U1 ( .A(n6), .Y(\CO<1> ) );
  BUFX2 U2 ( .A(\P<0> ), .Y(n2) );
  BUFX2 U3 ( .A(n7), .Y(\CO<0> ) );
  BUFX2 U4 ( .A(n5), .Y(\CO<2> ) );
endmodule


module clu_4bit_2 ( PG, GG, CI, .CO({\CO<3> , \CO<2> , \CO<1> , \CO<0> }), 
    .P({\P<3> , \P<2> , \P<1> , \P<0> }), .G({\G<3> , \G<2> , \G<1> , \G<0> })
 );
  input CI, \P<3> , \P<2> , \P<1> , \P<0> , \G<3> , \G<2> , \G<1> , \G<0> ;
  output PG, GG, \CO<3> , \CO<2> , \CO<1> , \CO<0> ;
  wire   n4, n5, n6, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13,
         w14;

  and2_38 mod1 ( .out(w1), .in1(\P<0> ), .in2(CI) );
  or2_20 mod2 ( .out(n6), .in1(\G<0> ), .in2(w1) );
  and2_37 mod3 ( .out(w2), .in1(\P<1> ), .in2(n6) );
  or2_19 mod4 ( .out(n5), .in1(\G<1> ), .in2(w2) );
  and2_36 mod5 ( .out(w3), .in1(\P<2> ), .in2(n5) );
  or2_18 mod6 ( .out(n4), .in1(\G<2> ), .in2(w3) );
  and2_35 mod7 ( .out(w4), .in1(\P<3> ), .in2(n4) );
  or2_17 mod8 ( .out(\CO<3> ), .in1(\G<3> ), .in2(w4) );
  and2_34 mod9 ( .out(w5), .in1(\P<0> ), .in2(\P<1> ) );
  and2_33 mod10 ( .out(w6), .in1(\P<2> ), .in2(\P<3> ) );
  and2_32 mod11 ( .out(PG), .in1(w5), .in2(w6) );
  and2_31 mod12 ( .out(w7), .in1(\G<2> ), .in2(\P<3> ) );
  and2_30 mod13 ( .out(w8), .in1(\G<1> ), .in2(\P<3> ) );
  and2_29 mod14 ( .out(w9), .in1(w8), .in2(\P<2> ) );
  and2_28 mod15 ( .out(w10), .in1(\G<0> ), .in2(\P<3> ) );
  and2_27 mod16 ( .out(w11), .in1(\P<2> ), .in2(\P<1> ) );
  and2_26 mod17 ( .out(w12), .in1(w10), .in2(w11) );
  or2_16 mod18 ( .out(w13), .in1(\G<3> ), .in2(w7) );
  or2_15 mod19 ( .out(w14), .in1(w9), .in2(w12) );
  or2_14 mod20 ( .out(GG), .in1(w13), .in2(w14) );
  BUFX2 U1 ( .A(n6), .Y(\CO<0> ) );
  BUFX2 U2 ( .A(n4), .Y(\CO<2> ) );
  BUFX2 U3 ( .A(n5), .Y(\CO<1> ) );
endmodule


module clu_4bit_1 ( PG, GG, CI, .CO({\CO<3> , \CO<2> , \CO<1> , \CO<0> }), 
    .P({\P<3> , \P<2> , \P<1> , \P<0> }), .G({\G<3> , \G<2> , \G<1> , \G<0> })
 );
  input CI, \P<3> , \P<2> , \P<1> , \P<0> , \G<3> , \G<2> , \G<1> , \G<0> ;
  output PG, GG, \CO<3> , \CO<2> , \CO<1> , \CO<0> ;
  wire   n6, n7, n8, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13,
         w14, n1, n2;

  and2_25 mod1 ( .out(w1), .in1(\P<0> ), .in2(CI) );
  or2_13 mod2 ( .out(n8), .in1(\G<0> ), .in2(w1) );
  and2_24 mod3 ( .out(w2), .in1(\P<1> ), .in2(n8) );
  or2_12 mod4 ( .out(n7), .in1(\G<1> ), .in2(w2) );
  and2_23 mod5 ( .out(w3), .in1(\P<2> ), .in2(n7) );
  or2_11 mod6 ( .out(n6), .in1(\G<2> ), .in2(w3) );
  and2_22 mod7 ( .out(w4), .in1(\P<3> ), .in2(n6) );
  or2_10 mod8 ( .out(\CO<3> ), .in1(\G<3> ), .in2(w4) );
  and2_21 mod9 ( .out(w5), .in1(\P<0> ), .in2(\P<1> ) );
  and2_20 mod10 ( .out(w6), .in1(\P<2> ), .in2(\P<3> ) );
  and2_19 mod11 ( .out(PG), .in1(w5), .in2(w6) );
  and2_18 mod12 ( .out(w7), .in1(\G<2> ), .in2(\P<3> ) );
  and2_17 mod13 ( .out(w8), .in1(\G<1> ), .in2(\P<3> ) );
  and2_16 mod14 ( .out(w9), .in1(w8), .in2(\P<2> ) );
  and2_15 mod15 ( .out(w10), .in1(\G<0> ), .in2(\P<3> ) );
  and2_14 mod16 ( .out(w11), .in1(\P<2> ), .in2(\P<1> ) );
  and2_13 mod17 ( .out(w12), .in1(w10), .in2(w11) );
  or2_9 mod18 ( .out(w13), .in1(\G<3> ), .in2(w7) );
  or2_8 mod19 ( .out(w14), .in1(w9), .in2(w12) );
  or2_7 mod20 ( .out(GG), .in1(w13), .in2(w14) );
  BUFX2 U1 ( .A(n6), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(n2) );
  INVX1 U3 ( .A(n2), .Y(\CO<2> ) );
  BUFX2 U4 ( .A(n8), .Y(\CO<0> ) );
  BUFX2 U5 ( .A(n7), .Y(\CO<1> ) );
endmodule


module clu_4bit_0 ( PG, GG, CI, .CO({\CO<3> , \CO<2> , \CO<1> , \CO<0> }), 
    .P({\P<3> , \P<2> , \P<1> , \P<0> }), .G({\G<3> , \G<2> , \G<1> , \G<0> })
 );
  input CI, \P<3> , \P<2> , \P<1> , \P<0> , \G<3> , \G<2> , \G<1> , \G<0> ;
  output PG, GG, \CO<3> , \CO<2> , \CO<1> , \CO<0> ;
  wire   n4, n5, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14,
         n1;

  and2_12 mod1 ( .out(w1), .in1(\P<0> ), .in2(CI) );
  or2_6 mod2 ( .out(n5), .in1(\G<0> ), .in2(w1) );
  and2_11 mod3 ( .out(w2), .in1(\P<1> ), .in2(n5) );
  or2_5 mod4 ( .out(n4), .in1(\G<1> ), .in2(w2) );
  and2_10 mod5 ( .out(w3), .in1(\P<2> ), .in2(n4) );
  or2_4 mod6 ( .out(\CO<2> ), .in1(\G<2> ), .in2(w3) );
  and2_9 mod7 ( .out(w4), .in1(\P<3> ), .in2(n1) );
  or2_3 mod8 ( .out(\CO<3> ), .in1(\G<3> ), .in2(w4) );
  and2_8 mod9 ( .out(w5), .in1(\P<0> ), .in2(\P<1> ) );
  and2_7 mod10 ( .out(w6), .in1(\P<2> ), .in2(\P<3> ) );
  and2_6 mod11 ( .out(PG), .in1(w5), .in2(w6) );
  and2_5 mod12 ( .out(w7), .in1(\G<2> ), .in2(\P<3> ) );
  and2_4 mod13 ( .out(w8), .in1(\G<1> ), .in2(\P<3> ) );
  and2_3 mod14 ( .out(w9), .in1(w8), .in2(\P<2> ) );
  and2_2 mod15 ( .out(w10), .in1(\G<0> ), .in2(\P<3> ) );
  and2_1 mod16 ( .out(w11), .in1(\P<2> ), .in2(\P<1> ) );
  and2_0 mod17 ( .out(w12), .in1(w10), .in2(w11) );
  or2_2 mod18 ( .out(w13), .in1(\G<3> ), .in2(w7) );
  or2_1 mod19 ( .out(w14), .in1(w9), .in2(w12) );
  or2_0 mod20 ( .out(GG), .in1(w13), .in2(w14) );
  BUFX2 U1 ( .A(\CO<2> ), .Y(n1) );
  BUFX2 U2 ( .A(n5), .Y(\CO<0> ) );
  BUFX2 U3 ( .A(n4), .Y(\CO<1> ) );
endmodule


module fulladder_16bit ( .S({\S<15> , \S<14> , \S<13> , \S<12> , \S<11> , 
        \S<10> , \S<9> , \S<8> , \S<7> , \S<6> , \S<5> , \S<4> , \S<3> , 
        \S<2> , \S<1> , \S<0> }), .P({\P<15> , \P<14> , \P<13> , \P<12> , 
        \P<11> , \P<10> , \P<9> , \P<8> , \P<7> , \P<6> , \P<5> , \P<4> , 
        \P<3> , \P<2> , \P<1> , \P<0> }), .G({\G<15> , \G<14> , \G<13> , 
        \G<12> , \G<11> , \G<10> , \G<9> , \G<8> , \G<7> , \G<6> , \G<5> , 
        \G<4> , \G<3> , \G<2> , \G<1> , \G<0> }), .A({\A<15> , \A<14> , 
        \A<13> , \A<12> , \A<11> , \A<10> , \A<9> , \A<8> , \A<7> , \A<6> , 
        \A<5> , \A<4> , \A<3> , \A<2> , \A<1> , \A<0> }), .B({\B<15> , \B<14> , 
        \B<13> , \B<12> , \B<11> , \B<10> , \B<9> , \B<8> , \B<7> , \B<6> , 
        \B<5> , \B<4> , \B<3> , \B<2> , \B<1> , \B<0> }), .CI({\CI<15> , 
        \CI<14> , \CI<13> , \CI<12> , \CI<11> , \CI<10> , \CI<9> , \CI<8> , 
        \CI<7> , \CI<6> , \CI<5> , \CI<4> , \CI<3> , \CI<2> , \CI<1> , \CI<0> 
        }) );
  input \A<15> , \A<14> , \A<13> , \A<12> , \A<11> , \A<10> , \A<9> , \A<8> ,
         \A<7> , \A<6> , \A<5> , \A<4> , \A<3> , \A<2> , \A<1> , \A<0> ,
         \B<15> , \B<14> , \B<13> , \B<12> , \B<11> , \B<10> , \B<9> , \B<8> ,
         \B<7> , \B<6> , \B<5> , \B<4> , \B<3> , \B<2> , \B<1> , \B<0> ,
         \CI<15> , \CI<14> , \CI<13> , \CI<12> , \CI<11> , \CI<10> , \CI<9> ,
         \CI<8> , \CI<7> , \CI<6> , \CI<5> , \CI<4> , \CI<3> , \CI<2> ,
         \CI<1> , \CI<0> ;
  output \S<15> , \S<14> , \S<13> , \S<12> , \S<11> , \S<10> , \S<9> , \S<8> ,
         \S<7> , \S<6> , \S<5> , \S<4> , \S<3> , \S<2> , \S<1> , \S<0> ,
         \P<15> , \P<14> , \P<13> , \P<12> , \P<11> , \P<10> , \P<9> , \P<8> ,
         \P<7> , \P<6> , \P<5> , \P<4> , \P<3> , \P<2> , \P<1> , \P<0> ,
         \G<15> , \G<14> , \G<13> , \G<12> , \G<11> , \G<10> , \G<9> , \G<8> ,
         \G<7> , \G<6> , \G<5> , \G<4> , \G<3> , \G<2> , \G<1> , \G<0> ;


  fulladder_15 fulladder0 ( .S(\S<0> ), .P(\P<0> ), .G(\G<0> ), .InA(\A<0> ), 
        .InB(\B<0> ), .Cin(\CI<0> ) );
  fulladder_14 fulladder1 ( .S(\S<1> ), .P(\P<1> ), .G(\G<1> ), .InA(\A<1> ), 
        .InB(\B<1> ), .Cin(\CI<1> ) );
  fulladder_13 fulladder2 ( .S(\S<2> ), .P(\P<2> ), .G(\G<2> ), .InA(\A<2> ), 
        .InB(\B<2> ), .Cin(\CI<2> ) );
  fulladder_12 fulladder3 ( .S(\S<3> ), .P(\P<3> ), .G(\G<3> ), .InA(\A<3> ), 
        .InB(\B<3> ), .Cin(\CI<3> ) );
  fulladder_11 fulladder4 ( .S(\S<4> ), .P(\P<4> ), .G(\G<4> ), .InA(\A<4> ), 
        .InB(\B<4> ), .Cin(\CI<4> ) );
  fulladder_10 fulladder5 ( .S(\S<5> ), .P(\P<5> ), .G(\G<5> ), .InA(\A<5> ), 
        .InB(\B<5> ), .Cin(\CI<5> ) );
  fulladder_9 fulladder6 ( .S(\S<6> ), .P(\P<6> ), .G(\G<6> ), .InA(\A<6> ), 
        .InB(\B<6> ), .Cin(\CI<6> ) );
  fulladder_8 fulladder7 ( .S(\S<7> ), .P(\P<7> ), .G(\G<7> ), .InA(\A<7> ), 
        .InB(\B<7> ), .Cin(\CI<7> ) );
  fulladder_7 fulladder8 ( .S(\S<8> ), .P(\P<8> ), .G(\G<8> ), .InA(\A<8> ), 
        .InB(\B<8> ), .Cin(\CI<8> ) );
  fulladder_6 fulladder9 ( .S(\S<9> ), .P(\P<9> ), .G(\G<9> ), .InA(\A<9> ), 
        .InB(\B<9> ), .Cin(\CI<9> ) );
  fulladder_5 fulladder10 ( .S(\S<10> ), .P(\P<10> ), .G(\G<10> ), .InA(
        \A<10> ), .InB(\B<10> ), .Cin(\CI<10> ) );
  fulladder_4 fulladder11 ( .S(\S<11> ), .P(\P<11> ), .G(\G<11> ), .InA(
        \A<11> ), .InB(\B<11> ), .Cin(\CI<11> ) );
  fulladder_3 fulladder12 ( .S(\S<12> ), .P(\P<12> ), .G(\G<12> ), .InA(
        \A<12> ), .InB(\B<12> ), .Cin(\CI<12> ) );
  fulladder_2 fulladder13 ( .S(\S<13> ), .P(\P<13> ), .G(\G<13> ), .InA(
        \A<13> ), .InB(\B<13> ), .Cin(\CI<13> ) );
  fulladder_1 fulladder14 ( .S(\S<14> ), .P(\P<14> ), .G(\G<14> ), .InA(
        \A<14> ), .InB(\B<14> ), .Cin(\CI<14> ) );
  fulladder_0 fulladder15 ( .S(\S<15> ), .P(\P<15> ), .G(\G<15> ), .InA(
        \A<15> ), .InB(\B<15> ), .Cin(\CI<15> ) );
endmodule


module clu_16bit ( .CO({\CO<15> , \CO<14> , \CO<13> , \CO<12> , \CO<11> , 
        \CO<10> , \CO<9> , \CO<8> , \CO<7> , \CO<6> , \CO<5> , \CO<4> , 
        \CO<3> , \CO<2> , \CO<1> , \CO<0> }), CI, .P({\P<15> , \P<14> , 
        \P<13> , \P<12> , \P<11> , \P<10> , \P<9> , \P<8> , \P<7> , \P<6> , 
        \P<5> , \P<4> , \P<3> , \P<2> , \P<1> , \P<0> }), .G({\G<15> , \G<14> , 
        \G<13> , \G<12> , \G<11> , \G<10> , \G<9> , \G<8> , \G<7> , \G<6> , 
        \G<5> , \G<4> , \G<3> , \G<2> , \G<1> , \G<0> }) );
  input CI, \P<15> , \P<14> , \P<13> , \P<12> , \P<11> , \P<10> , \P<9> ,
         \P<8> , \P<7> , \P<6> , \P<5> , \P<4> , \P<3> , \P<2> , \P<1> ,
         \P<0> , \G<15> , \G<14> , \G<13> , \G<12> , \G<11> , \G<10> , \G<9> ,
         \G<8> , \G<7> , \G<6> , \G<5> , \G<4> , \G<3> , \G<2> , \G<1> ,
         \G<0> ;
  output \CO<15> , \CO<14> , \CO<13> , \CO<12> , \CO<11> , \CO<10> , \CO<9> ,
         \CO<8> , \CO<7> , \CO<6> , \CO<5> , \CO<4> , \CO<3> , \CO<2> ,
         \CO<1> , \CO<0> ;
  wire   n5, n6, n7, n1;

  clu_4bit_3 clu0 ( .PG(), .GG(), .CI(CI), .CO({n7, \CO<2> , \CO<1> , \CO<0> }), .P({\P<3> , \P<2> , \P<1> , \P<0> }), .G({\G<3> , \G<2> , \G<1> , \G<0> })
         );
  clu_4bit_2 clu1 ( .PG(), .GG(), .CI(n7), .CO({n6, \CO<6> , \CO<5> , \CO<4> }), .P({\P<7> , \P<6> , \P<5> , \P<4> }), .G({\G<7> , \G<6> , \G<5> , \G<4> })
         );
  clu_4bit_1 clu2 ( .PG(), .GG(), .CI(n6), .CO({n5, \CO<10> , \CO<9> , \CO<8> }), .P({\P<11> , \P<10> , \P<9> , \P<8> }), .G({\G<11> , \G<10> , \G<9> , 
        \G<8> }) );
  clu_4bit_0 clu3 ( .PG(), .GG(), .CI(n5), .CO({\CO<15> , \CO<14> , \CO<13> , 
        \CO<12> }), .P({\P<15> , \P<14> , \P<13> , \P<12> }), .G({\G<15> , 
        \G<14> , \G<13> , \G<12> }) );
  INVX1 U1 ( .A(n6), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(\CO<7> ) );
  BUFX2 U3 ( .A(n5), .Y(\CO<11> ) );
  BUFX2 U4 ( .A(n7), .Y(\CO<3> ) );
endmodule


module not1_3 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module and2_74 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module not1_2 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module and2_73 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_72 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_71 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module not1_1 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module not1_0 ( in1, out );
  input in1;
  output out;


  INVX1 U1 ( .A(in1), .Y(out) );
endmodule


module and2_70 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X1 U1 ( .A(in2), .B(in1), .Y(out) );
endmodule


module and2_69 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module and2_68 ( out, in1, in2 );
  input in1, in2;
  output out;


  AND2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module or2_29 ( out, in1, in2 );
  input in1, in2;
  output out;
  wire   n1, n3, n4;

  AND2X2 U1 ( .A(n3), .B(n4), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(out) );
  INVX1 U3 ( .A(in1), .Y(n3) );
  INVX1 U4 ( .A(in2), .Y(n4) );
endmodule


module or2_28 ( out, in1, in2 );
  input in1, in2;
  output out;


  OR2X2 U1 ( .A(in1), .B(in2), .Y(out) );
endmodule


module cla_16bit ( .OUT({\OUT<15> , \OUT<14> , \OUT<13> , \OUT<12> , \OUT<11> , 
        \OUT<10> , \OUT<9> , \OUT<8> , \OUT<7> , \OUT<6> , \OUT<5> , \OUT<4> , 
        \OUT<3> , \OUT<2> , \OUT<1> , \OUT<0> }), Ofl, .A({\A<15> , \A<14> , 
        \A<13> , \A<12> , \A<11> , \A<10> , \A<9> , \A<8> , \A<7> , \A<6> , 
        \A<5> , \A<4> , \A<3> , \A<2> , \A<1> , \A<0> }), .B({\B<15> , \B<14> , 
        \B<13> , \B<12> , \B<11> , \B<10> , \B<9> , \B<8> , \B<7> , \B<6> , 
        \B<5> , \B<4> , \B<3> , \B<2> , \B<1> , \B<0> }), CI, sign );
  input \A<15> , \A<14> , \A<13> , \A<12> , \A<11> , \A<10> , \A<9> , \A<8> ,
         \A<7> , \A<6> , \A<5> , \A<4> , \A<3> , \A<2> , \A<1> , \A<0> ,
         \B<15> , \B<14> , \B<13> , \B<12> , \B<11> , \B<10> , \B<9> , \B<8> ,
         \B<7> , \B<6> , \B<5> , \B<4> , \B<3> , \B<2> , \B<1> , \B<0> , CI,
         sign;
  output \OUT<15> , \OUT<14> , \OUT<13> , \OUT<12> , \OUT<11> , \OUT<10> ,
         \OUT<9> , \OUT<8> , \OUT<7> , \OUT<6> , \OUT<5> , \OUT<4> , \OUT<3> ,
         \OUT<2> , \OUT<1> , \OUT<0> , Ofl;
  wire   n4, \w1<15> , \w1<14> , \w1<13> , \w1<12> , \w1<11> , \w1<10> ,
         \w1<9> , \w1<8> , \w1<7> , \w1<6> , \w1<5> , \w1<4> , \w1<3> ,
         \w1<2> , \w1<1> , \w1<0> , \w2<15> , \w2<14> , \w2<13> , \w2<12> ,
         \w2<11> , \w2<10> , \w2<9> , \w2<8> , \w2<7> , \w2<6> , \w2<5> ,
         \w2<4> , \w2<3> , \w2<2> , \w2<1> , \w2<0> , \w3<15> , \w3<14> ,
         \w3<13> , \w3<12> , \w3<11> , \w3<10> , \w3<9> , \w3<8> , \w3<7> ,
         \w3<6> , \w3<5> , \w3<4> , \w3<3> , \w3<2> , \w3<1> , \w3<0> , w4, w5,
         w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, n2, n3;

  fulladder_16bit mod1 ( .S({n4, \OUT<14> , \OUT<13> , \OUT<12> , \OUT<11> , 
        \OUT<10> , \OUT<9> , \OUT<8> , \OUT<7> , \OUT<6> , \OUT<5> , \OUT<4> , 
        \OUT<3> , \OUT<2> , \OUT<1> , \OUT<0> }), .P({\w1<15> , \w1<14> , 
        \w1<13> , \w1<12> , \w1<11> , \w1<10> , \w1<9> , \w1<8> , \w1<7> , 
        \w1<6> , \w1<5> , \w1<4> , \w1<3> , \w1<2> , \w1<1> , \w1<0> }), .G({
        \w2<15> , \w2<14> , \w2<13> , \w2<12> , \w2<11> , \w2<10> , \w2<9> , 
        \w2<8> , \w2<7> , \w2<6> , \w2<5> , \w2<4> , \w2<3> , \w2<2> , \w2<1> , 
        \w2<0> }), .A({\A<15> , \A<14> , \A<13> , \A<12> , \A<11> , \A<10> , 
        \A<9> , \A<8> , \A<7> , \A<6> , \A<5> , \A<4> , \A<3> , \A<2> , \A<1> , 
        \A<0> }), .B({\B<15> , \B<14> , \B<13> , \B<12> , \B<11> , \B<10> , 
        \B<9> , \B<8> , \B<7> , \B<6> , \B<5> , \B<4> , \B<3> , \B<2> , \B<1> , 
        \B<0> }), .CI({\w3<14> , \w3<13> , \w3<12> , \w3<11> , \w3<10> , 
        \w3<9> , \w3<8> , \w3<7> , \w3<6> , \w3<5> , \w3<4> , \w3<3> , \w3<2> , 
        \w3<1> , \w3<0> , CI}) );
  clu_16bit mod2 ( .CO({\w3<15> , \w3<14> , \w3<13> , \w3<12> , \w3<11> , 
        \w3<10> , \w3<9> , \w3<8> , \w3<7> , \w3<6> , \w3<5> , \w3<4> , 
        \w3<3> , \w3<2> , \w3<1> , \w3<0> }), .CI(CI), .P({\w1<15> , \w1<14> , 
        \w1<13> , \w1<12> , \w1<11> , \w1<10> , \w1<9> , \w1<8> , \w1<7> , 
        \w1<6> , \w1<5> , \w1<4> , \w1<3> , \w1<2> , \w1<1> , \w1<0> }), .G({
        \w2<15> , \w2<14> , \w2<13> , \w2<12> , \w2<11> , \w2<10> , \w2<9> , 
        \w2<8> , \w2<7> , \w2<6> , \w2<5> , \w2<4> , \w2<3> , \w2<2> , \w2<1> , 
        \w2<0> }) );
  not1_3 mod3 ( .in1(sign), .out(w4) );
  and2_74 mod4 ( .out(w5), .in1(w4), .in2(\w3<15> ) );
  not1_2 mod5 ( .in1(n4), .out(w6) );
  and2_73 mod6 ( .out(w7), .in1(sign), .in2(\A<15> ) );
  and2_72 mod7 ( .out(w8), .in1(\B<15> ), .in2(w6) );
  and2_71 mod8 ( .out(w9), .in1(w7), .in2(w8) );
  not1_1 mod9 ( .in1(\A<15> ), .out(w10) );
  not1_0 mod10 ( .in1(\B<15> ), .out(w11) );
  and2_70 mod11 ( .out(w12), .in1(sign), .in2(w10) );
  and2_69 mod12 ( .out(w13), .in1(w11), .in2(n3) );
  and2_68 mod13 ( .out(w14), .in1(w12), .in2(w13) );
  or2_29 mod14 ( .out(w15), .in1(w5), .in2(w9) );
  or2_28 mod15 ( .out(Ofl), .in1(w15), .in2(w14) );
  BUFX2 U1 ( .A(n4), .Y(\OUT<15> ) );
  INVX1 U2 ( .A(\OUT<15> ), .Y(n2) );
  INVX1 U3 ( .A(n2), .Y(n3) );
endmodule

