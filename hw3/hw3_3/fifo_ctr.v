module fifo_ctr( clk, rst, data_in_valid, pop_fifo, fifo_empty, fifo_full, rp, wp, err);

input                 rst, clk, data_in_valid, pop_fifo;   
output                fifo_empty, fifo_full;      
output [1:0]          rp, wp;
output err;

reg         fifo_empty, fifo_full;
reg[2:0]    fifo_counter;
reg[1:0]    wp, rp;         
reg err;

always @(fifo_counter)
begin
   fifo_empty = (fifo_counter==0);
   fifo_full = (fifo_counter== 4);

end

always @(posedge clk or posedge rst)
begin
   if( rst ) begin
       fifo_counter <= 0;
       err <= 0;
   end
   else if( (!fifo_full && data_in_valid) && ( !fifo_empty && pop_fifo ) )
       fifo_counter <= fifo_counter;

   else if( !fifo_full && data_in_valid )
       fifo_counter <= fifo_counter + 1;

   else if( !fifo_empty && pop_fifo )
       fifo_counter <= fifo_counter - 1;
   else
      fifo_counter <= fifo_counter;
end

always@(posedge clk or posedge rst)
begin
   if( rst )
   begin
      wp <= 0;
      rp <= 0;
   end
   else
   begin
      if( !fifo_full && data_in_valid)    wp <= wp + 1;
          else  wp <= wp;

      if( !fifo_empty && pop_fifo )   rp <= rp + 1;
      else rp <= rp;
   end

end
endmodule
