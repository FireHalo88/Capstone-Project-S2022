# Capstone-Project-S2022
ROS Project for scanning environments/objects using the Log-GPIS algorithm

## Setup Guide
The following is a complete guide to setup and run the simulation. This simulation was run in ROS Noetic on Ubuntu 20.04.5, however ROS Melodic on Ubuntu 18.04 should be sufficient as well (However it has not been tested yet personally)

1. Install [ROS Noetic](http://wiki.ros.org/noetic/Installation/Ubuntu) and make sure to install the Desktop-Full option to avoid missing any ROS packages 

2. Install [Realsense-ros](https://github.com/IntelRealSense/realsense-ros/tree/ros1-legacy) and
[Universal_Robots_ROS_Driver](https://github.com/UniversalRobots/Universal_Robots_ROS_Driver)

3. Setup up python through this [link](https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-programming-environment-on-an-ubuntu-20-04-server) and install python directory through the following command line: 

*sudo apt-get install python-is-python3 -y*

Learn more about this through the following [link](https://linuxpip.org/python-is-python3/)

4. Move Gazebo Test Models into your ".gazebo/models" folder using the following lines.

*cp -r catkin_ws/src/models/bottle .gazebo/models/*

*cp -r catkin_ws/src/models/checkerboard .gazebo/models/*

*cp -r catkin_ws/src/models/spam .gazebo/models/*

Verify whether these files have been successfully placed in the folder using the following command:

*cd .gazebo/models/*

*ls*

## Running the Simulation
The following steps are to successfully launch and move the robot/camera around the virtual test environment.

1. Run the following command: 

*roslaunch myur10_description myur10.launch* (Launches Gazebo Simulation)

Here, you can add any models imported from Step 3 in the setup guide by clicking the insert tab. 

The following objects and locations were used in the simulation testing:

Bottle & Checkerboard Location: 

X: 0.637778 Y: 0.314378 Z: 0.838695	Roll: 0.0 Pitch: 0 Yaw: -1.5708

Spam Location: 

X: 0.866 Y: 0.329 Z: 0.89 	Roll: 0.0 Pitch: 0.0 Yaw: -1.5708

2. Run the following command: 

*roslaunch myur10_moveit_config myur10_move_group_python.launch*

This will open up RVIZ and present you with a view of the UR10's current configuration and the current depth camera output

3. To record the data in the simulation, open a terminal to a desired location and type in the following command:

*rosbag record -O (rosbag_name) /joint_states /camera/depth/camera_info /camera/depth/image_raw /tf /tf_static*

Replace (rosbag_name) with the name of the rosbag

NOTE: "/camera/depth/image_raw" may be phrased differently on your system. 

To find out how to record your depth images or to verify whether the other topics you're recording, type the following command after you have completed steps 1 and 2.

*rostopic list -v*

OPTIONAL: On top of collecting data through a rosbag, you may also run the following command in a separate terminal:

*rosrun image_capture imageCapture_node*

This would collect the camera's transformation and the depth images of the camera into a specific folder that will need to be edited to match your desired output directory. This would negate the time spent finding the forward kinematics of the camera through the manipulator's joint angles.

4. To move the robot, use the following command: rosrun myur10_moveit_config move_group_python_interface.py

This will run the python code in the file move_gorup_python_interface.py and move the robot in both the Gazebo and RVIZ environment.

You may change the code here to reflect your own manipulator movements. 

By default it is set to move the UR10 in the rosbag recording path for the bottle.

5. Once the robot has completed its movements and stopped moving, ctrl+c the terminal which is recording the simulation data.

To verify whether the correct topics have been recorded, run the following commands:

(In the terminal that was recording the data): *rosbag info (insert_rosbag_name_here)*

(To check if the depth images were recorded): *rqt_bag* 

## Collecting Data in real life
This is similar to the simulation method, with slight differences

1. Ensure that the UR5e or the UR manipulator used is turned on and plugged in, with connectivity checked beforehand (i.e. ping (insert ip address of the robot)

2. Launch the following command line to be able to record the rostopics from the robot (i.e. the joint angles)

*roslaunch ur_robot_driver (robot_type)_bringup.launch robot_ip:=(ip_address)* 

where (robot_type) is the UR robot you are using (i.e UR5, UR10, etc) and (ip_address) is the ip address of the robot itself.

NOTE: To ensure accurate results, make sure to calibrate the robot, follow the instructions in the UR ROS Driver URL in Step 2 of the setup

3. Launch the following command line to be able to record the rostopics from the realsense camera (i.e. depth images and the camera info)

*roslaunch realsense2_camera rs_camera.launch*

When RVIZ launches, set the link to camera_link and add the topic for depth images, image_rect_raw by clicking add->By Topics

4. Follow step 3 in Running the Simulation, making sure to check for any changes in the names of the topics 

5. Once you have moved the robot around either through FreeDrive mode or your own script, stop recording the data 


## Extracting data from a rosbag

To collect the data needed from the rosbags, you need to navigate to the image_capture folder in a terminal. 

Once here, you may type in the following command:

*python bagtopng.py (Insert_rosbag_name_here) (Insert_folder_for_data_to_go_to) (Insert_topic_name)*

Make sure before you type this line that you have the folder for the data to go to already made and the specific topic's section of code uncommented. Each section of code has been commented to identify which topic you are intenting to read from.

## Running Matlab Code

Before continuing, ensure that all depth images and their associated transformations have been collected and the camera's parameters have been recorded.

1. Navigate to Matlab GPIS Algorithm -> data and insert the transformations into poses and depth images into the masked_depth folder

2. Insert your camera parameters into the make_GPisMap3.m file, which can be found in Matlab GPIS Algorithm -> mex

Once this has been completed, run this file and wait till it has been completed before continuing.

3. Navigate to the demo_gpisMap3.m in the folder named matlab and change the xg, yg and zg parameters in both this file and in visualize_gpisMap3.m. Make sure to also change the D parameter to analyse your depth images

4. Run demo_gpisMap3.m, but comment out the line visualize_gpisMap3 to test whether there are any issues with the frame given.
Failure to check may result in the Matlab application crashing.




