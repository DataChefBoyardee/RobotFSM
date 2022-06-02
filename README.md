# RobotFSM
A very simple robot finite state machine programmed into a ZedBoard Zynq-7000 FPGA.

If you have Vivado installed, it is possible to test just the robot FSM. Simply add the sources
in the folder FinalProject.srcs and run the simulation to test them. You will see the either the
"done" signal go high if the robot reached its destination, or the "error" signal if it has not.
To see the map output, add the memory module to the simulation window via the scope tab.

If you wish to test the OLED, a bitstream has already been generated and 
is in /FinalProject.runs/impl_1 folder. You'll need a ZedBoard Zynq-7000 
in order to run it, otherwise if you have a different FPGA board, you will 
need it's pin map and rename the pins according to the variables used in the 
source files, then generate your own bitsream.

How it works:
There are two modules for the FSM itself, one that handles the decisions of where the robot
will go, and another to access the memory of the robot. Two modules are used to handle the OLED
display of the Zedboard, one is an FSM that handles input for the display, and another that wraps
around the module so it can communicate with the memory module of the robot.

The modules are explained in greater detail below:
1.) Memory
  This holds the map of the area the robot will traverse, as well as the total number of 
  moves the robot has made, and which direction the robot has moved.
  
  The map tiles can have five different values:
  0 = untraveled
  1 = traveled
  2 = obstacle
  3 = destination
  4 = backtracked
  
2.) Robot FSM
  This module contains the FSM handling the decisions of where the robot will move. The robot can
  move in four directions: North, South, East, and West. By default, it will move North regardless
  of where the destination is in relation to where it is moving. When the robot moves, it will replace
  the value of the tile it is moving to a "1" marking it as traveled.
  
  To make a decision of where to move, the robot first sends a signal to memory and accesses a tile's value
  in a given direction. Based on the value of that tile, the robot will either move to the tile, or test 
  another tile. If all tiles in each direction have been tested and the values returned are either "1" or "2", 
  then the robot will begin backtracking.
  
  When the robot enter's backtracking states, it will do the thing described as when it traverses normally, but 
  instead will replace tiles with the value "4". It will default to moving "West" regardless of where the
  destination is in relation to its position on the map.
  
  When the robot encounters a "3", it will move to that tile without replacing the value, and send the done signal.
  If all tiles on the map have been traversed and backtracked, meaning the destination is either unreachable or 
  hasn't been set, then the robot will stop and send the error signal.
