
module halfsub_test;
reg a,b;
wire diff,borrow;

half_sub UUT(.a(a),.b(b),.diff(diff),.borrow(borrow));
initial begin
$monitor($time,"a=%b b=%b diff=%b borrow=%b",a,b,diff,borrow);
a=0;
b=0;
#10
a=0;
b=1;
#10
a=1;
b=0;
#10
a=1;
b=1;
#10;
end
endmodule
