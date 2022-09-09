using namespace std;

#include <iostream>
#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <math.h>

double joint_pos_global_1 = 1;
double joint_pos_global_2 = 2;
double joint_pos_global_3 = 3;
double joint_pos_global_4 = 4;
double joint_pos_global_5 = 5;
double joint_pos_global_6 = 6;
//double test_array[];

void callback(const sensor_msgs::JointState::ConstPtr& msg)
{ 
  // double joint_pos_global_1 = 1;
  // double joint_pos_global_2 = 2;
  // double joint_pos_global_3 = 3;
  // double joint_pos_global_4 = 4;
  // double joint_pos_global_5 = 5;
  // double joint_pos_global_6 = 6;
  //ROS_INFO("Received: ", msg->position);
  // test_array = msg.get()->position;
  joint_pos_global_1 = msg.get()->position[0];
  joint_pos_global_2 = msg.get()->position[1];
  joint_pos_global_3 = msg.get()->position[2];
  joint_pos_global_4 = msg.get()->position[3];
  joint_pos_global_5 = msg.get()->position[4];
  joint_pos_global_6 = msg.get()->position[5];
  //cout << "Subscriber works!";
}

int main(int argc, char** argv) 
{
  //ROS_INFO("test");
  //cout << "I'm stuck";
  // ros::Time::init();
  ros::init(argc, argv, "listener");

  ros::NodeHandle nh; 
  ros::Subscriber sub;
  
  sub = nh.subscribe ("joint_states", 1000, callback);

  ros::Rate loop_rate(1000);
  // cout << "Just got out of the dryer";
  // ros::spin(); 
  //cout << ;
  while (ros::ok())
  {
    // joint_pos_global_1 = round(joint_pos_global_1);
    // joint_pos_global_2 = round(joint_pos_global_2);
    // joint_pos_global_3 = round(joint_pos_global_3);
    // joint_pos_global_4 = round(joint_pos_global_4);
    // joint_pos_global_5 = round(joint_pos_global_5);
    // joint_pos_global_6 = round(joint_pos_global_6);

    cout << "Joint 1: " << joint_pos_global_1 << endl;
    cout << "Joint 2: " << joint_pos_global_2 << endl;
    cout << "Joint 3: " << joint_pos_global_3 << endl;
    cout << "Joint 4: " << joint_pos_global_4 << endl;
    cout << "Joint 5: " << joint_pos_global_5 << endl;
    cout << "Joint 6: " << joint_pos_global_6 << endl;
    cout << "" << endl;
    // ROS_INFO("Joint 1: ", joint_pos_global_1);
    // ROS_INFO("Joint 2: ", joint_pos_global_2);
    // ROS_INFO("Joint 3: ", joint_pos_global_3);
    // ROS_INFO("Joint 4: ", joint_pos_global_4);
    // ROS_INFO("Joint 5: ", joint_pos_global_5);
    // ROS_INFO("Joint 6: ", joint_pos_global_6);
    ros::spinOnce();
    loop_rate.sleep();
  }

  ros::spin();
  return 0;
}

// #include <iostream>
// #include <sensor_msgs/fill_image.h>
// #include <sensor_msgs/point_cloud2_iterator.h>

// #include "opencv2/opencv.hpp"
// #include <iostream>
// #include <sstream>
// #include <string>
// #include <iomanip>
// #include <stdio.h>

// #include <ros/ros.h>
// #include <sensor_msgs/PointCloud2.h>
// #include <sensor_msgs/image_encodings.h>

// #include <boost/algorithm/string.hpp>
// #include <boost/filesystem.hpp>
// #include <std_msgs/String.h>
// #include <thread>

// #include <cv_bridge/cv_bridge.h>

// #include <time.h>

// #include "geometry_msgs/Point.h"
// #include <rosbag/bag.h>
// #include <rosbag/view.h>
// #include <std_msgs/Int32.h>
// #include <std_msgs/String.h>

// #include <boost/foreach.hpp>
// #define foreach BOOST_FOREACH

// int main(int argc, char **argv)
// {
//   ros::init(argc, argv, "eyeInScreen");
  
//   ros::NodeHandle n;

//   // rosbag::Bag bag("test.bag", rosbag::bagmode::Write);
//   // std_msgs::Int32 i;
//   // i.data = 42;
//   // bag.write("numbers", ros::Time::now(), i);
//   // bag.close();  

//   // rosbag::Bag bag("test.bag");
//   // rosbag::View view(bag, rosbag::TopicQuery("numbers"));
//   // BOOST_FOREACH(rosbag::MessageInstance const m, view)
//   // {
//   //   std_msgs::Int32::ConstPtr i = m.instantiate<std_msgs::Int32>();
//   //   if (i != NULL)
//   //     std::cout << i->data << std::endl;
//   // }
//   // bag.close();

//   //ros::init(argc, argv, "eyeInScreen");
 
//   /**
//    * NodeHandle is the main access point to communications with the ROS system.
//    * The first NodeHandle constructed will fully initialize this node, and the last
//    * NodeHandle destructed will close down the node.
//    */
//   // ros::NodeHandle n;
 
 
//   // ros::Publisher chatter_pub = n.advertise<geometry_msgs::Point>("/point", 10);
 
//   // ros::Rate loop_rate(10);
 
//   // int count = 0;
 
//   //rosbag::Bag bag;
//   //bag.open("/home/rosbag_tests/test.bag", rosbag::bagmode::Read);
 
//   // std::vector<std::string> topics;
//   // topics.push_back(std::string("chatter"));
//   // topics.push_back(std::string("numbers"));
 
//   // rosbag::View view(bag, rosbag::TopicQuery(topics));
//   // foreach(rosbag::MessageInstance const m, view)
//   // {
//   //     std_msgs::String::ConstPtr s = m.instantiate<std_msgs::String>();
//   //     if (s != NULL)
//   //         std::cout << s->data << std::endl;
 
//   //     std_msgs::Int32::ConstPtr i = m.instantiate<std_msgs::Int32>();
//   //     if (i != NULL)
//   //         std::cout << i->data << std::endl;
//   // }
 
//   //bag.close();
 
 
//   return 0;
// }