`timescale 1ns / 1ps

module Elevator_response_tb();
reg reset, clock, callA, callB, callC, callD;
wire [1:0]state;

Elevator_response_logic DUT(.reset(reset),.clock(clock),.callA(callA),.callB(callB),.callC(callC), 
.callD(callD),.state(state));

initial
begin
    clock = 1'b0;
    reset = 1'b1;
    #5 reset = 1'b0;
end

always
begin
    #5 clock = ~clock;
end

initial 
begin
    callA = 1; callB = 0; callC = 0; callD = 0;
    #5 callC = 1; callA = 0;
    #10 callB = 1; callC = 0;
    #5 callD = 1;callB = 0;
    #5 callD = 0;
    #10 callA = 1;
    #5 callA = 0;
    
end

endmodule
