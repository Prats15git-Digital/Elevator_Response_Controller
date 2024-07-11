An elevator is one of the most common conveyer devices we find in every or the other buildings; this project aims at putting up the logic behind all the controlling mechanisms 
whenever an elevator is called from any floor. Sometimes, you might notice that you have to wait for a considerable amount of time to access the elevator in a busy place like shopping malls.
The response controller is behind all of the movement and stop operations of the elevator. If it starts to respond every call at the same time from different floors; someone asking for a convey-up 
or a convey-down, it would result in failure of the elevator operation. So, a basic logic control is devised to make them work efficiently.


**Specifications**

- There are 4 floors for which the elevator is designed, supporting movements from one floor to the other in directions of up or down.
- To prevent failure and haphazard motion, the elevator is designed to response to calls only if the direction matches with the position of the floor from which it is called
- If someone calls from a higher floor and the elevator is moving up, destined to go to the top floor then it shall respond to the call and stop at that floor. However, in this case, if a call is received
from the lower floor then it shall ignore the call.



**Demonstration of an example case with Xilinx Vivado**

In the above case, initially the elevator is at floor A and a call is received from that floor itself. Now, a call is received from the third floor C, so it tries to answer that call by setting its destined 
direction to be UP. As soon as it reaches C, we find that someone from floor B has called the elevator, since it is called from a floor below the current floor, it ignores the call B and remains in the floor C.
Soon, a call is received from floor D, the elevator answers the call as it is a floor above C. At D, now it waits for a call from floors below so that it can set its direction to be DOWN and goes to floor A thereafter.

*NOTE :- State 0, State 1, State 2 and State 3 represent floors A, B, C, and D respectively.


![Screenshot 2024-07-08 161752](https://github.com/Prats15git-Digital/Elevator_Response_Controller/assets/173728218/a3ca8027-74a5-4266-ae48-8a9cb637c360)
