module fa(input a,b,c, output sum,cry);
  assign sum=a^b^c;
  assign cry=(a&b)|(b&c)|(c&a);
endmodule
