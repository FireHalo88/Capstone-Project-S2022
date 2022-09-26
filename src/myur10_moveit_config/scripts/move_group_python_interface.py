#!/usr/bin/env python
import time
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list

#initialise moveit_commander and a rospy node
moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_interface', anonymous=True)

#instantiate a RobotCommander object
robot = moveit_commander.RobotCommander()

#instantiate a PlanningSceneInterface object
scene = moveit_commander.PlanningSceneInterface()

#instantiate a MoveGroupCommander object
group_name="manipulator"
move_group=moveit_commander.MoveGroupCommander(group_name)

#Create DisplayTrajectory ROS publisher which is used to display trajectoies in RVIZ
display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=20)

# Play Around with the Stuff Below

# #Get basic information
# planning_frame = move_group.get_planning_frame()
# print('Planning frame: %s' % planning_frame)

# #We can also print the name of the end-effector link for this group:
# eef_link = move_group.get_end_effector_link()
# print ("============ End effector link: %s" % eef_link)

# #We can get a list of all the groups in the robot:
# group_names = robot.get_group_names()
# print("============ Available Planning Groups:", robot.get_group_names())

# #Sometimes for debugging, it is useful to print the entire state of the robot:
# print ("============ Printing robot state")
# print (robot.get_current_state())
# print ("============")

# #We can get the joint values from the group and adjust some of the values:
# # joint_current = move_group.get_current_joint_values()

# # print('Current joint values: ', joint_current)
# # print('Enter joint angles in radian')
# # joint_goal = [float(input("Enter angle: ")) for i in range(6)]
# # print('New goals for the robot: ', joint_goal)

# #joint_goal = [-0.7854,-1.0472,2.0943,-1.0472,0.7854,-3.1416] #Direct Right
# #joint_goal = [0.7854,-1.0472,2.0943,-1.0472,2.3562,0] #Direct Left
# #20, 


# #joint_goal = [0.87266,-0.61086, 1.39626,-0.78539, 2.44346,0] #Direct  Lefter Left  In Degrees: [50 -35 80 -45 140 0]
# #joint_goal = [0.0, -1.1345, 2.7925, -1.65806,0,0] #Direct Further Back Front        In Degrees: [0 -65 160 -95 0 0]
# #joint_goal = [0.30543, -0.30543, 0.74176, -0.43633, -2.83616, 0.0] #Direct Further Back       In Degrees: [0 -30 60 -40 0 -180]


# #Top Right Quadrant
# #joint_goal = [-0.26179, -0.52359, 1.13446, -0.61086, -2.18166, 0]  #Kinda right, Closer to full right    In Degrees: [-15 -30 65 -35 -125 0]
# #joint_goal = [0.0, -0.43633, 1.04719, -0.61086, -2.44346, 0]       #Kinda right, Closer to direct back   In Degrees: [-15 -35 70 -35 -125 0]

# #Bottom Right Quadrant
# #joint_goal = [-0.4363, -0.78539, 1.65806,-0.87266,-2.00712, 0]         #Direct Right                         In Degrees: [-25 -45 95 -50 -115 0]
# #joint_goal = [-0.69813, -1.04719, 2.26892, -1.22173, -1.57079, 0]      #Kinda Right, closer to full right    In Degrees: [-40 -60 130 -70 -90 0]
# #joint_goal = [-0.78539, -1.13446, 2.61799, -1.48352, -1.39626, 0]      #Kinda Right, closer to front         In Degrees: [-45 -65 150 -85 -80 0]

# #Direct Back and Front
# #joint_goal = [0.30543, -0.30543, 0.74176, -0.43633, -2.83616, 0.0]     #Direct Further Back                  In Degrees: [17.5 -17.5 42.5 -25 -162.5 0]
# #joint_goal = [0.0, -1.1345, 2.7925, -1.65806,0,0]                      #Direct Further Back Front            In Degrees: [0 -65 160 -95 0 0]

# #Bottom Left Quadrant
# #joint_goal = [0.87266,-0.61086, 1.39626,-0.78539, 2.44346,0]           #Direct  Lefter Left                  In Degrees: [50 -35 80 -45 140 0]
# #joint_goal = [1.04719,-0.78539, 1.91986,-1.13446, 2.00712,0]           #Less Left Closer to Left left        In Degrees: [60 -45 110 -65 115 0]
# #joint_goal = [0.95993,-1.22173, 2.53072,-1.30899, 1.39626,0]           #Less Left Closer to Front            In Degrees: [60 -45 110 -65 115 0]

# #Top
# #joint_goal = [0.0,-2.09439, 2.61799, 0.0, 0,0]                         #Less Top More Direct Front           In Degrees: [0 -120 150 0 0 0]
# #joint_goal = [0.0,-1.74532, 2.26892, 0.0, 0, 0.39269]                  #Less Top More Closer to Top          In Degrees: [0 -100 130 0 0 22.5]
# #joint_goal = [0.30543, -0.39269, 0.61086, -0.43633, -2.83616, 0.17453] #Back Top                             In Degrees: [17.5 -25 42.5 -25 -162.5 0]

# #Top Left Quadrant
# joint_goal = [0.69813, -0.30543, 0.74176, -0.43633, 2.79252, 0.0]      #Back Closer to Direct Left           In Degrees: [40 -17.5 42.5 -25 160 0]
# #joint_goal = [0.43633, -0.30543, 0.74176, -0.43633, -3.05432, 0.0]     #Back Closer to Direct Back Left      In Degrees: [40 -17.5 42.5 -25 160 0]


# #joint_goal = [0.0,-1.0472,2.618,-1.5708,0,0] #Direct Front
# #joint_goal = [0.0,-0.7854,1.5708,-0.7854,0,-3.1416] #Direct Back
# #joint_goal = [0,-1.5708,0.0,0,0,0]
# #joint_goal = [0.0,-1.1345,2.7925,-1.5708,0,0] #Direct Further Back Front


# #Previous Test Joint Angles
# #joint_goal = [0,-1.57,0,0,1.57,0] #Looks right
# #joint_goal = [0.75,-1.2,1.95,0.8,1.57,0] #Close Left Side
# #joint_goal = [-0.25,-1.3,2.15,0.7,1.57,3.13] #Close Right Side 
# #joint_goal = [0.75,-1.2,1.95,0.8,-1.57,0] 
# #joint_goal = [-0.25,-1.3,2.15,0.7,1.57,3.13] #Close Right Side 
# # The go command can be called with joint values, poses, or without any parameters 
# # if you have already set the pose or joint target for the group
# move_group.go(joint_goal, wait=True)

# # Calling stop() ensures that there is no residual movement
# move_group.stop()

#The following below does work, I'm just not using it for now
for x in range (16):
    #Get basic information
    planning_frame = move_group.get_planning_frame()
    print('Planning frame: %s' % planning_frame)

    #We can also print the name of the end-effector link for this group:
    eef_link = move_group.get_end_effector_link()
    print ("============ End effector link: %s" % eef_link)

    #We can get a list of all the groups in the robot:
    group_names = robot.get_group_names()
    print("============ Available Planning Groups:", robot.get_group_names())

    #Sometimes for debugging, it is useful to print the entire state of the robot:
    print ("============ Printing robot state")
    print (robot.get_current_state())
    print ("============")

    #We can get the joint values from the group and adjust some of the values:
    joint_current = move_group.get_current_joint_values()

    # print('Current joint values: ', joint_current)
    # print('Enter joint angles in radian')
    # joint_goal = [float(input("Enter angle: ")) for i in range(6)]
    # print('New goals for the robot: ', joint_goal)
    # joint_goal = [0.75,-1.2,1.95,0.8,1.57,0] #Close Left Side
    # joint_goal = [-0.25,-1.3,2.15,0.7,1.57,3.13] #Close Right Side 
    # goal_0 = [0,-1.57,0,0,0,0]
    # goal_1 = [0,-2.5,1.5,0,0,0]
    # goal_2 = [0,-1.57,2.85,-1.3,0,0] #Front
    # goal_3 = [0,-2.5,2.0,0,0,0]
    # goal_4 = [0.75,-1.2,1.95,0.8,1.57,0] #Close Left Side
    # goal_5 = [0,-2.5,2.0,0,0,0]
    # goal_6 = [-0.25,-1.3,2.15,0.7,1.57,3.13] #Close Right Side 
    # goal_7 = [0,-2.5,2.0,0,0,0]
    # goal_8 = [0,-0.85,1.57,-1.57,0,-2.3] #Back
    # goal_9 = [0,-1.57,0,0,0,0]

    # goal_0 = [0,-1.57,0,0,0,0]
    # goal_1 = [0.0,-1.0472,2.618,-1.5708,0,0] #Direct Front
    # goal_2 = [0,-2.5,2.0,0,0,0]
    # goal_3 = [0.7854,-1.0472,2.0943,-1.0472,2.3562,0] #Direct Left
    # goal_4 = [0,-2.5,2.0,0,0,0]
    # goal_5 = [-0.7854,-1.0472,2.0943,-1.0472,0.7854,-3.1416] #Direct Right
    # goal_6 = [0,-2.5,2.0,0,0,0]
    # goal_7 = [0.0,-0.7854,1.5708,-0.7854,0,-3.1416] #Direct Back
    # goal_8 = [0,-1.57,0,0,0,0]

    #Top Right Quadrant
    #joint_goal = [-0.26179, -0.52359, 1.13446, -0.61086, -2.18166, 0]  #Kinda right, Closer to full right    In Degrees: [-15 -30 65 -35 -125 0]
    #joint_goal = [0.0, -0.43633, 1.04719, -0.61086, -2.44346, 0]       #Kinda right, Closer to direct back   In Degrees: [-15 -35 70 -35 -125 0]

    #Bottom Right Quadrant
    #joint_goal = [-0.4363, -0.78539, 1.65806,-0.87266,-2.00712, 0]         #Direct Right                         In Degrees: [-25 -45 95 -50 -115 0]
    #joint_goal = [-0.69813, -1.04719, 2.26892, -1.22173, -1.57079, 0]      #Kinda Right, closer to full right    In Degrees: [-40 -60 130 -70 -90 0]
    #joint_goal = [-0.78539, -1.13446, 2.61799, -1.48352, -1.39626, 0]      #Kinda Right, closer to front         In Degrees: [-45 -65 150 -85 -80 0]

    #Direct Back and Front
    #joint_goal = [0.30543, -0.30543, 0.74176, -0.43633, -2.83616, 0.0]     #Direct Further Back                  In Degrees: [17.5 -17.5 42.5 -25 -162.5 0]
    #joint_goal = [0.0, -1.1345, 2.7925, -1.65806,0,0]                      #Direct Further Back Front            In Degrees: [0 -65 160 -95 0 0]

    #Bottom Left Quadrant
    #joint_goal = [0.87266,-0.61086, 1.39626,-0.78539, 2.44346,0]           #Direct  Lefter Left                  In Degrees: [50 -35 80 -45 140 0]
    #joint_goal = [1.04719,-0.78539, 1.91986,-1.13446, 2.00712,0]           #Less Left Closer to Left left        In Degrees: [60 -45 110 -65 115 0]
    #joint_goal = [0.95993,-1.22173, 2.53072,-1.30899, 1.39626,0]           #Less Left Closer to Front            In Degrees: [60 -45 110 -65 115 0]

    #Top
    #joint_goal = [0.0,-2.09439, 2.61799, 0.0, 0,0]                         #Less Top More Direct Front           In Degrees: [0 -120 150 0 0 0]
    #joint_goal = [0.0,-1.74532, 2.26892, 0.0, 0, 0.39269]                  #Less Top More Closer to Top          In Degrees: [0 -100 130 0 0 22.5]
    #joint_goal = [0.30543, -0.39269, 0.61086, -0.43633, -2.83616, 0.17453] #Back Top                             In Degrees: [17.5 -25 42.5 -25 -162.5 0]

    #Top Left Quadrant
    #joint_goal = [0.69813, -0.30543, 0.74176, -0.43633, 2.79252, 0.0]      #Back Closer to Direct Left           In Degrees: [40 -17.5 42.5 -25 160 0]
    #joint_goal = [0.43633, -0.30543, 0.74176, -0.43633, -3.05432, 0.0]     #Back Closer to Direct Back Left      In Degrees: [40 -17.5 42.5 -25 160 0]

    goal_0 = [0,-1.57,0,0,0,0]                                              #All the way up, nothing can stop me
    goal_1 = [0.0, -1.1345, 2.7925, -1.65806,0,0]                           #Direct Further Back Front 
    goal_2 = [0.95993,-1.22173, 2.53072,-1.30899, 1.39626,0]                #Less Left Closer to Front
    goal_3 = [1.04719,-0.78539, 1.91986,-1.13446, 2.00712,0]                #Less Left Closer to Left left
    goal_4 = [0.87266,-0.61086, 1.39626,-0.78539, 2.44346,0]                #Direct  Lefter Left 
    goal_5 = [0.69813, -0.30543, 0.74176, -0.43633, 2.79252, 0.0]           #Back Closer to Direct Left 
    goal_6 = [0.43633, -0.30543, 0.74176, -0.43633, -3.05432, 0.0]          #Back Closer to Direct Back Left 
    goal_7 = [0.30543, -0.30543, 0.74176, -0.43633, -2.83616, 0.0]          #Direct Further Back 
    goal_8 = [0.0, -0.43633, 1.04719, -0.61086, -2.44346, 0]                #Kinda right, Closer to direct back 
    goal_9 = [-0.26179, -0.52359, 1.13446, -0.61086, -2.18166, 0]           #Kinda right, Closer to full right  
    goal_10 = [-0.4363, -0.78539, 1.65806,-0.87266,-2.00712, 0]             #Direct Right  
    goal_11 = [-0.69813, -1.04719, 2.26892, -1.22173, -1.57079, 0]          #Kinda Right, closer to full right 
    goal_12 = [0.0,-2.09439, 2.61799, 0.0, 0,0]                             #Less Top More Direct Front  
    goal_13 = [0.0,-1.74532, 2.26892, 0.0, 0, 0.39269]                      #Less Top More Closer to Top 
    goal_14 = [0.30543, -0.39269, 0.61086, -0.43633, -2.83616, 0.17453]     #Back Top  
    goal_15 = [0,-1.57,0,0,0,0]                                             #All the way up, nothing can stop me


    # goal_1 = [0.0,-1.1345,2.7925,-1.5708,0,0] #Direct Further Back Front
    # goal_2 = [0,-2.5,2.0,0,0,0]
    # goal_3 = [0.8727,-0.6981, 1.6581,-0.9599,2.4435,-0.1] #Direct  Lefter Left
    # goal_4 = [0,-2.5,2.0,0,0,0]
    # goal_5 = [-0.4363, -1.0472,2.2689,-1.0472,1.12,3.05] #Direct Further Right
    # goal_6 = [0,-2.5,2.0,0,0,0]
    # goal_7 = [0.0,-0.5236,1.0472,-0.6981,0.0,-3.07] #Direct Further Back
    # goal_8 = [0,-1.57,0,0,0,0]

    joint_goal = [goal_0, goal_1, goal_2, goal_3, goal_4, goal_5, goal_6, goal_7, goal_8, goal_9, goal_10, goal_11, goal_12, goal_13, goal_14, goal_15]
    
    # The go command can be called with joint values, poses, or without any parameters 
    # if you have already set the pose or joint target for the group
    move_group.go(joint_goal[x], wait=True)

    # Calling stop() ensures that there is no residual movement
    move_group.stop()
    time.sleep(2)
