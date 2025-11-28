module tb;
  reg [15:0]x,y,z;
  wire[15:0]sum;
  wire cout;
  csa dut(x,y,z,sum,cout);
  initial begin
    repeat(10) begin
      {x,y,z}=$random();
      #2;
    end
  end
  initial begin
    $monitor("[%0t] x=%0d y=%0d z=%0d sum=%0d cout=%0d",$time,x,y,z,sum,cout);
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule
