# RobotFSM
A simple robot finite state machine programmed into a ZedBoard Zynq-7000 FPGA.

Contributors: Patrick Cook and Josue Lugo

If you have Vivado installed, it is possible to test just the robot FSM. You must use the sources
in the folder /FPGA_Final_Project_Stage_1_and_2 in order to simulate the robot. Simply add the sources
in the folder FinalProject.srcs to a new project, or use the Vivado project file provided, and run the 
simulation to test them.

1.) To run stages 1 and 2, simply unzip the file "FPGA_Final_Project_Stage_1_and_2", and click on the Vivado project file.

2.) Click "Run Behavioral Simulation"

3.) Add memory.vhd to the wave window via the scope tab

4.) The wave window should now contain the 2D array representing the map and direction the robot follows

-- Further below describes the Stage 3 part of our project. 
-- Right below this line is the legend refering to how the robot keeps track of areas it has traveled.
-- You will see the either the "done" signal go high if the robot reached its destination, or the "error" signal if it has not.

LEGEND:

0 -> Untraveled square

1 -> Traveled square

2 -> Obstacle

3 -> Goal/Destination

4 -> Backtracked square

If you wish to test the OLED, a bitstream has already been generated and 
is in /FinalProject.runs/impl_1 folder. You'll need a ZedBoard Zynq-7000 
in order to run it, otherwise if you have a different FPGA board, you will 
need it's pin map and rename the pins according to the variables used in the 
source files, then generate your own bitsream.

1.) To run stage 3, first unzip the file "FPGA_Final_Project_Stage_3", and click on the Vivado project file.

2.) Generate the bitstream if it isn't already there.

3.) Program the device.

4.) To set the starting area, and goal, first set number by pushing the switches up or down 
	
	(each switch corresponds to a single bit out of an 8-bit number)

5.) Press BTNL after setting each coordinate.

6.) Once done, the OLED should prompt you to press the start BTN. Start BTN is BTND.

7.) The steps should print out in sequence 

8.) An LED should indicate when the robot has either reached it's destination or cannot reach the destination, as well as the OLED indicating such.

9.) Finally, the number of steps should print out on the OLED as well. 

How it works:
There are two modules for the FSM itself, one that handles the decisions of where the robot
will go, and another to access the memory of the robot. Two modules are used to handle the OLED
display of the Zedboard, one is an FSM that handles input for the display in much the same way as 
the robot, and another that wraps around the module so it can communicate with the memory module of 
the robot.

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
