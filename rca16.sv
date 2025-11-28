module rca16(input[15:0]a,b,input cin, output[15:0]sum, output cout);
    wire v1;
    rca8 b1(a[7:0],b[7:0],cin,sum[7:0],v1);
    rca8 b2(a[15:8],b[15:8],v1,sum[15:8],cout);
  endmodule
