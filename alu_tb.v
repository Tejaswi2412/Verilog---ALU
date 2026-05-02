module test;
reg[3:0] a,b;
reg [2:0]sel;
wire [3:0]out;

alu uut(.a(a),.b(b),.sel(sel),.out(out));
    
    
    initial begin
        a=0 ; b=0 ; sel=0;

        sel = 3'b000;
        #10 a=4'b0001 ; b=4'b1001 ;
        #10 a=4'b1001 ; b=4'b1101 ;

        sel = 3'b001;
        #10 a=4'b0001 ; b=4'b1001 ;
        #10 a=4'b1001 ; b=4'b1101 ;

        sel = 3'b010;
        #10 a=4'b0001 ; b=4'b1001 ;
        #10 a=4'b1001 ; b=4'b1101 ;

        sel =3'b011;
        #10 a=4'b0001 ; b=4'b1001 ;
        #10 a=4'b1001 ; b=4'b1101 ;

        sel = 3'b100;
       #10 a=4'b0001 ; b=4'b1001 ;
        #10 a=4'b1001 ; b=4'b1101 ;

        sel = 3'b101;
        #10 a=4'b0001 ; b=4'b1001 ;
        #10 a=4'b1001 ; b=4'b1101 ;

        sel = 3'b110;
        #10 a=4'b0001 ; b=4'b1001 ;
        #10 a=4'b1001 ; b=4'b1101 ;

        sel = 3'b111;
        #10 a=4'b0001 ; b=4'b1001 ;
        #10 a=4'b1001 ; b=4'b1101 ;

        #10 $finish ;
    end

    initial begin
        $dumpfile("aluwave.vcd");
        $dumpvars(0, test);
        $monitor("t=%0t sel=%b a=%0d b=%0d out=%0d", $time ,sel ,a,b,out);
    end

endmodule



