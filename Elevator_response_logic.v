`timescale 1ns / 1ps

module Elevator_response_logic(
input clock, reset, callA, callB, callC, callD,
output reg [1:0]state);

parameter A=0,B=1,C=2,D=3;
parameter UP=1,DOWN=0;
reg direction; 

always@(clock or state or callA or callB or callC or callD or direction)
begin
    if(reset)
    state <= A;
    else
    begin
        case(state)
            A : case(1)
                callA : begin state <= A; direction <= UP; end
                callB : begin state <= B; direction <= UP; end
                callC : begin state <= C; direction <= UP; end
                callD : begin state <= D; direction <= UP; end
            endcase
            
            B : case(direction)
                UP : case(1)
                    callA : state <= B;
                    callB : state <= B;
                    callC : state <= C;
                    callD : state <= D;
                endcase
                DOWN : case(1)
                    callA : state <= A;
                    callB : state <= B;
                    callC : state <= B;
                    callD : state <= B;
                endcase
            endcase
            
            C : case(direction)
                UP : case(1)
                    callA : state <= C;
                    callB : state <= C;
                    callC : state <= C;
                    callD : state <= D;
                endcase
                DOWN : case(1)
                    callA : state <= A;
                    callB : state <= B;
                    callC : state <= C;
                    callD : state <= C;
                endcase
            endcase
            
            D : case(1)
                callA : begin state <= A; direction <= DOWN; end
                callB : begin state <= B; direction <= DOWN; end
                callC : begin state <= C; direction <= DOWN; end
                callD : begin state <= D; direction <= DOWN; end
            endcase
            
        endcase
    end
end

endmodule
