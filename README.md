# Capstone-Project-S2022
ROS Project for scanning environments/objects using the Log-GPIS algorithm

## Setup Guide
The following is a complete guide to setup and run the simulation. This simulation was run in ROS Noetic on Ubuntu 20.04.5, however ROS Melodic on Ubuntu 18.04 should be sufficient as well (However it has not been tested yet personally)

1. Install [ROS Noetic](http://wiki.ros.org/noetic/Installation/Ubuntu) and make sure to install the Desktop-Full option to avoid missing any ROS packages 
2. Install [Realsense-ros](https://github.com/IntelRealSense/realsense-ros/tree/ros1-legacy) 

3. Setup up python through this [link](https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-programming-environment-on-an-ubuntu-20-04-server) and install python directory through the following command line: sudo apt-get install python-is-python3 -y

Learn more about this through the following [link](https://linuxpip.org/python-is-python3/)

4. Move Gazebo Test Models into your ".gazebo/models" folder using the following lines.

cp -r catkin_ws/src/models/bottle .gazebo/models/

cp -r catkin_ws/src/models/checkerboard .gazebo/models/

cp -r catkin_ws/src/models/spam .gazebo/models/

Verify whether these files have been successfully placed in the folder using the following command:

cd .gazebo/models/

ls

## Running the Simulation
The following steps are to successfully launch and move the robot/camera around the virtual test environment.

1. Run the following command: roslaunch myur10_description myur10.launch (Launches Gazebo Simulation)

Here, you can add any models imported from Step 3 in the setup guide by clicking the insert tab. 

The following objects and locations were used in the simulation testing:

Bottle & Checkerboard Location: X: 0.637778 Y: 0.314378 Z: 0.838695 	Roll: 0.0 Pitch: 0 Yaw: -1.5708
Spam Location: X: 0.866 Y: 0.329 Z: 0.89 	Roll: 0.0 Pitch: 0.0 Yaw: -1.5708

2. Run the following command: roslaunch myur10_moveit_config myur10_move_group_python.launch

This will open up RVIZ and present you with a view of the UR10's current configuration and the current depth camera output

3. To move the robot, use the following command: rosrun myur10_moveit_config move_group_python_interface.py

This will run the python code in the file move_gorup_python_interface.py and move the robot in both the Gazebo and RVIZ environment.

You may change the code here to reflect your own manipulator movements. 

By default it is set to move the UR10 in the rosbag recording path for the bottle.


