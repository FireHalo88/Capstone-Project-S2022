using namespace std;

#include <time.h>
#include <iostream>
#include <fstream>
#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <math.h>

#include <moveit/robot_model_loader/robot_model_loader.h>

#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/CameraInfo.h>

#include <ros/package.h>
#include <ros/console.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sys/stat.h> 

#include <stdio.h>

#include <tf/tf.h>
#include <tf2_ros/transform_listener.h>

#include <tf/transform_datatypes.h>

static int depthImages;
std::string filename_home = "/home/tor/bag2depthphotos/";

double joint_pos_global_1 = 1;
double joint_pos_global_2 = 2;
double joint_pos_global_3 = 3;
double joint_pos_global_4 = 4;
double joint_pos_global_5 = 5;
double joint_pos_global_6 = 6;

double previous_joint_1;
double previous_joint_2;
double previous_joint_3;
double previous_joint_4;
double previous_joint_5;
double previous_joint_6;

//Camera Parameters
float test1;
float test2;
float test3;
float test4;
float test5;
float test6;
float test7;
float test8;
float test9;
float test10;
float test11;
float test12;
float test13;
float test14;
float test15;
float test16;


char r;

ros::Time current_time;
ros::Time previous_time;

tf2_ros::Buffer m_tf2Buffer;
std::vector<float> transform_ptr;

void callback(const sensor_msgs::JointState::ConstPtr& msg)
{ 
  current_time = ros::Time::now();
  joint_pos_global_1 = msg.get()->position[0];
  joint_pos_global_2 = msg.get()->position[1];
  joint_pos_global_3 = msg.get()->position[2];
  joint_pos_global_4 = msg.get()->position[3];
  joint_pos_global_5 = msg.get()->position[4];
  joint_pos_global_6 = msg.get()->position[5];    
  
}
//sensor_msgs::CameraInfoConstPtr& cam_info

//void callback2(const sensor_msgs::CameraInfoConstPtr& cam_info)
void callback2(const sensor_msgs::CameraInfo::ConstPtr& cam_info) //(const ImageConstPtr& image, const CameraInfoConstPtr& cam_info)

{
  // test1 = cam_info.get()->K[0];
  // test2 = cam_info.get()->K[1];
  // test3 = cam_info.get()->K[2];
  // test4 = cam_info.get()->K[3];

  // test5 = cam_info.get()->K[4];
  // test6 = cam_info.get()->K[5];
  // test7 = cam_info.get()->K[6];
  // test8 = cam_info.get()->K[7];

  // test9 = cam_info.get()->K[8];
  test1 = cam_info.get()->P[0];
  test2 = cam_info.get()->P[1];
  test3 = cam_info.get()->P[2];
  test4 = cam_info.get()->P[3];

  test5 = cam_info.get()->P[4];
  test6 = cam_info.get()->P[5];
  test7 = cam_info.get()->P[6];
  test8 = cam_info.get()->P[7];

  test9 = cam_info.get()->P[8];
  test10 = cam_info.get()->P[9];
  test11 = cam_info.get()->P[10];
  test12 = cam_info.get()->P[11]; 

  // test13 = cam_info.get()->P[12];
  // test14 = cam_info.get()->P[13];
  // test15 = cam_info.get()->P[14];
  // test16 = cam_info.get()->P[15];
  
}

void callback3(const sensor_msgs::ImageConstPtr& img)
{
  cv_bridge::CvImagePtr cv_ptr_depth;
  
  try
  {
    //cv_ptr_depth = cv_bridge::toCvCopy(img, sensor_msgs::image_encodings::TYPE_8SC1);
    cv_ptr_depth = cv_bridge::toCvCopy(img, sensor_msgs::image_encodings::TYPE_16UC1);
  }
  catch(cv_bridge::Exception& e)
  {
    ROS_ERROR("cv_bridge exception: %s", e.what());
    return;
  }

  //std::string filename = filename_home + "depth/depth_" + std::to_string(depthImages) + ".jpg";
  char test [100];
  sprintf(test,"/home/tor/catkin_ws/src/photo_collection/testing/test_depth_image_%d.png", depthImages);
  //Uncomment to allow for photo collection
  //cv::imwrite(test,cv_ptr_depth->image);
  depthImages++;      
}

void fetchRobotTF( tf::Transform& tran )
{
  geometry_msgs::TransformStamped local_transformStamped;
  try {
      local_transformStamped = m_tf2Buffer.lookupTransform("world", "camera_color_optical_frame", ros::Time(0));

      tf::transformMsgToTF( local_transformStamped.transform, tran);
      //return true;
  }
  catch (tf2::TransformException &ex) {
      ROS_WARN("%s", ex.what());
      //return false;
  }
    transform_ptr.resize(12);
    // Transform to save to file
    transform_ptr[0] = tran.getBasis()[0][0];
    transform_ptr[1] = tran.getBasis()[0][1];
    transform_ptr[2] = tran.getBasis()[0][2];
    transform_ptr[3] = tran.getOrigin().x();

    transform_ptr[4] = tran.getBasis()[1][0];
    transform_ptr[5] = tran.getBasis()[1][1];
    transform_ptr[6] = tran.getBasis()[1][2];
    transform_ptr[7] = tran.getOrigin().y();

    transform_ptr[8] = tran.getBasis()[2][0];
    transform_ptr[9] = tran.getBasis()[2][1];
    transform_ptr[10] = tran.getBasis()[2][2];
    transform_ptr[11] = tran.getOrigin().z();

    transform_ptr[12] = 0.000000; 
    transform_ptr[13] = 0.000000;
    transform_ptr[14] = 0.000000;
    transform_ptr[15] = 1.000000;

}

int main(int argc, char** argv) 
{
  ros::init(argc, argv, "listener");

  ros::NodeHandle nh; 
  ros::NodeHandle cam_info_node;
  ros::NodeHandle cam_node;

  ros::Subscriber sub;
  ros::Subscriber cam_info_sub;
  ros::Subscriber cam_sub;

  tf2_ros::TransformListener m_tf2Listener(m_tf2Buffer);
  tf::Transform m_robotTF;

  // message_filters::Subscriber<sensor_msgs::JointState> image_sub(nh, "joint_states", 1000);
  // message_filters::Subscriber<sensor_msgs::CameraInfo> info_sub(nh, "camera_info", 1);
  // message_filters::TimeSynchronizer<sensor_msgs::JointState, sensor_msgs::CameraInfo> sync(image_sub, info_sub, 10);
  // sync.registerCallback(boost::bind(&callback, _1, _2));

  sub = nh.subscribe ("joint_states", 1000, callback);
  cam_info_sub = cam_info_node.subscribe ("/camera/depth/camera_info", 1000, callback2);
  //Uncomment if you want to switch to automative photo creation
  cam_sub = cam_node.subscribe("/camera/depth/image_raw", 1000, callback3);


  ros::Rate loop_rate(1000);
  
  while (ros::ok())
  {    
    // try
    // {
      
    //     tf.waitForTransform("/base_link", "/map", ros::Time(0), ros::Duration(3.0));
    //     tf.lookupTransform("/base_link", "/map", ros::Time(0), transform);
    //     std::cout << "transform exist\n";
    // }
    ros::Duration(0.01).sleep();
    fetchRobotTF(m_robotTF);
    cout << transform_ptr[0] << " " << transform_ptr[1] << " " << transform_ptr[2] << " " << transform_ptr[3] << endl;
    cout << transform_ptr[4] << " " << transform_ptr[5] << " " << transform_ptr[6] << " " << transform_ptr[7] << endl;
    cout << transform_ptr[8] << " " << transform_ptr[9] << " " << transform_ptr[10] << " " << transform_ptr[11] << endl;
    cout << transform_ptr[12] << " " << transform_ptr[13] << " " << transform_ptr[14] << " " << transform_ptr[15] << endl;

    // while(current_time != previous_time)
    // {

    //   previous_time = current_time;
      
    //   if(previous_joint_1 != joint_pos_global_1 && previous_joint_2 != joint_pos_global_2 && previous_joint_3 != joint_pos_global_3 
    //     && previous_joint_4 != joint_pos_global_4 && previous_joint_5 != joint_pos_global_5 && previous_joint_6 != joint_pos_global_6)
    //   {
    //     ofstream myfile ("Joint_Angles.txt", fstream::app);
    //     if(myfile.is_open())
    //     {
    //       myfile << current_time << " " << joint_pos_global_1 << " " << 
    //       joint_pos_global_2 << " " << joint_pos_global_3 << " " << joint_pos_global_4 << " "
    //       << joint_pos_global_5 << " " << joint_pos_global_6 << "\n";

    //       myfile << current_time << " " << test1 << " " << 
    //       test2 << " " << test3 << " " << test4 << " "
    //       << test5 << " " << test6 << test7 << " " << test8 << test9 << "\n";
    //       myfile.close();
    //     }
    //     previous_joint_1 = joint_pos_global_1;
    //     previous_joint_2 = joint_pos_global_2;
    //     previous_joint_3 = joint_pos_global_3;
    //     previous_joint_4 = joint_pos_global_4;
    //     previous_joint_5 = joint_pos_global_5;
    //     previous_joint_6 = joint_pos_global_6;
    //   }
    // }
    
    ros::spinOnce();
    loop_rate.sleep();
  }

  ros::spin();

  return 0;
}