module branch_cond_test(data, instr, branch, jump, pc_src, flush);
    input [1:0] instr; // IF/ID_instr[12:11]
    input branch, jump;
    input [15:0] data;
    output [2:0] pc_src;
    output flush;

    reg [2:0] pc_src;
    reg flush;

    wire zero;    
    wire or_result;
    or16 or16_0 (.out(or_result), .in(data));
    assign zero = ~or_result;
        

  
always @ (branch, jump, instr, zero, data[15])
begin
    casex({branch,jump,instr,zero,data[15]})
      6'b0xxxxx:
      begin
        pc_src <= 3'b001;
        flush <= 1'b0;
      end
      6'b10000x:
      begin
        pc_src <= 3'b001;
        flush <= 1'b0;
     end
      6'b10001x:
      begin
        pc_src <= 3'b011;
        flush <= 1'b1;
      end
      6'b10010x:
      begin
        pc_src <= 3'b011;
        flush <= 1'b1;
      end
      6'b10011x:
      begin
        pc_src <= 3'b001;
        flush <= 1'b0;
      end
      6'b1010x0:
      begin
        pc_src <= 3'b001;
        flush <= 1'b0;
      end
      6'b1010x1:
      begin
        pc_src <= 3'b011;
        flush <= 1'b1;
      end
      6'b1011x0:
      begin
        pc_src <= 3'b011;
        flush <= 1'b1;
      end
      6'b1011x1:
      begin
        pc_src <= 3'b001;
        flush <= 1'b0;
      end
      6'b1100xx:
      begin
        pc_src <= 3'b100;
        flush <= 1'b1;
      end
      6'b1101xx:
      begin
        pc_src <= 3'b010;
        flush <= 1'b1;
      end
      6'b1110xx:
      begin
        pc_src <= 3'b100;
        flush <= 1'b1;
      end
      6'b1111xx:
      begin
        pc_src <= 3'b010;
        flush <= 1'b1;
      end
      
      default:
      begin
        pc_src <= 3'bxxx;
        flush <= 1'bx;
      end
    endcase
end

endmodule
