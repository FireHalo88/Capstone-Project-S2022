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

double test1;
double test2;
double test3;
double test4;
double test5;
double test6;
double test7;
double test8;
double test9;


char r;

ros::Time current_time;
ros::Time previous_time;

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

void callback2(const sensor_msgs::CameraInfo::ConstPtr& cam_info) //(const ImageConstPtr& image, const CameraInfoConstPtr& cam_info)
{
  test1 = cam_info.get()->K[0];
  test2 = cam_info.get()->K[1];
  test3 = cam_info.get()->K[2];
  test4 = cam_info.get()->K[3];

  test5 = cam_info.get()->K[4];
  test6 = cam_info.get()->K[5];
  test7 = cam_info.get()->K[6];
  test8 = cam_info.get()->K[7];

  test9 = cam_info.get()->K[8];
  
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
  sprintf(test,"/home/tor/catkin_ws/src/photo_collection/test_depth_image_%d.png", depthImages);
  
  // int height = cv_ptr_depth->image.rows;
  // int width = cv_ptr_depth->image.cols;
  // int step = cv_ptr_depth->image.step1();
  // int channel = cv_ptr_depth->image.channels();
  // int depth = cv_ptr_depth->image.depth();

  // for(int i=0; i<cv_ptr_depth->image.rows; i++)     // Height
  // {
  //     //Go through all the columns
  //     for(int j=0; j<cv_ptr_depth->image.cols; j++) // Width
  //     {
  //         //Go through all the channels (b, g, r)
  //         for(int k=0; k<cv_ptr_depth->image.channels(); k++)
  //         {
  //             //Invert the image by subtracting image data from 255               
  //             cv_ptr_depth->image.data[i*step+j*channel+k]=255-cv_ptr_depth->image.data[i*step+j*channel+k];
  //         }
  //     }
  // }

  // ofstream time2depth ("time2depth.txt", fstream::app);
  // if(time2depth.is_open())
  // {
  //   time2depth << depthImages << " " << current_time << "\n";
  //   time2depth.close();
  // }  
  
  //Undo comment if you want to see them photos
  //cv::imwrite(test,cv_ptr_depth->image);
  depthImages++;      
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
    while(current_time != previous_time)
    {

      previous_time = current_time;
      
      if(previous_joint_1 != joint_pos_global_1 && previous_joint_2 != joint_pos_global_2 && previous_joint_3 != joint_pos_global_3 
        && previous_joint_4 != joint_pos_global_4 && previous_joint_5 != joint_pos_global_5 && previous_joint_6 != joint_pos_global_6)
      {
        ofstream myfile ("Joint_Angles.txt", fstream::app);
        if(myfile.is_open())
        {
          myfile << current_time << " " << joint_pos_global_1 << " " << 
          joint_pos_global_2 << " " << joint_pos_global_3 << " " << joint_pos_global_4 << " "
          << joint_pos_global_5 << " " << joint_pos_global_6 << "\n";

          myfile << current_time << " " << test1 << " " << 
          test2 << " " << test3 << " " << test4 << " "
          << test5 << " " << test6 << test7 << " " << test8 << test9 << "\n";
          myfile.close();
        }
        previous_joint_1 = joint_pos_global_1;
        previous_joint_2 = joint_pos_global_2;
        previous_joint_3 = joint_pos_global_3;
        previous_joint_4 = joint_pos_global_4;
        previous_joint_5 = joint_pos_global_5;
        previous_joint_6 = joint_pos_global_6;
      }
  }
    
    ros::spinOnce();
    loop_rate.sleep();
  }

  ros::spin();

  return 0;
}