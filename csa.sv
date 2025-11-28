module csa(input [15:0]x,y,z,output[15:0]sum,output cout);
  wire [15:0]c,s;
  
  genvar i;
  generate
    for(i=0;i<16;i=i+1) begin
      fa f(x[i],y[i],z[i],s[i],c[i]);
    end
  endgenerate
  
  rca16 r1(s,{c[14:0],1'b0},1'b0,sum[15:0],cout);
 
endmodule
