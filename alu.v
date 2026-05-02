// 4 -bit ALU - 8 OPERATIONS
module alu(input [3:0] a,b, output reg [3:0]out, 
input [2:0] sel);   //sel[2:0] = Operation select

always@(*)begin

    case(sel) 
        3'b000: out=a&b;       //and operation
        3'b001: out=a|b;       //or operation
        3'b010: out=a^b;       //xor operation
        3'b011: out=~(a&b);    //nand operation
        3'b100: out=~(a|b);    //nor operation
        3'b101: out=a-b;       //subtraction operation(difference not captured)
        3'b110: out=~a;        //not a operation
        3'b111: out=a+b;       //addition operation(carry not captured)
        default: out = 4'b0000;
    endcase


end

endmodule



