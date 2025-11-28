module rca8(input[7:0]a,b,input cin, output[7:0]sum, output cout);
    wire w1;
    rca b1(a[3:0],b[3:0],cin,sum[3:0],w1);
    rca b2(a[7:4],b[7:4],w1,sum[7:4],cout);
  endmodule
