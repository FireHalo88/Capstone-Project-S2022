using namespace std;
// using namespace sensor_msgs;
// using namespace message_filters;

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

double fx;
double fy;
double cx;
double cy;

double test1;
double test2;
double test3;
double test4;
double test5;
double test6;
double test7;
double test8;
double test9;
double test10;
double test11;
double test12;

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
  cv::Mat image;
  cv_bridge::CvImagePtr cv_ptr_depth;
  if ( firstRGB ){
        try{
            cv_ptr_depth = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::TYPE_16UC1);
        }
        catch (cv_bridge::Exception& e){
            ROS_ERROR("cv_bridge exception DEPTH: %s", e.what());
            return ;
        }
        std::string filename = filename_home + "depth/depth_" + std::to_string(depthImages) + ".jpg";
        cv::imwrite(filename ,cv_ptr_depth->image);
        depthImages++;
    }  
}

int main(int argc, char** argv) 
{
  ros::init(argc, argv, "listener");

  ros::NodeHandle nh; 
  ros::NodeHandle cam_node;

  ros::Subscriber sub;
  ros::Subscriber cam_sub;
  
  // message_filters::Subscriber<sensor_msgs::JointState> image_sub(nh, "joint_states", 1000);
  // message_filters::Subscriber<sensor_msgs::CameraInfo> info_sub(nh, "camera_info", 1);
  // message_filters::TimeSynchronizer<sensor_msgs::JointState, sensor_msgs::CameraInfo> sync(image_sub, info_sub, 10);
  // sync.registerCallback(boost::bind(&callback, _1, _2));

  sub = nh.subscribe ("joint_states", 1000, callback);
  cam_sub = cam_node.subscribe ("/camera/depth/camera_info", 1000, callback2);
  // cam_sub = cam_node.subscribe ("camera_info", 1000, callback2); //("camera/depth/camera_info", 1000, callback2);

  // cout << "Fx: " << fx << endl;
  // cout << " " << endl;
  // cout << current_time << endl;
  // cout << "Joint 1: " << joint_pos_global_1 << endl;
  // cout << "Joint 2: " << joint_pos_global_2 << endl;
  // cout << "Joint 3: " << joint_pos_global_3 << endl;
  // cout << "Joint 4: " << joint_pos_global_4 << endl;
  // cout << "Joint 5: " << joint_pos_global_5 << endl;
  // cout << "Joint 6: " << joint_pos_global_6 << endl;
  // cout << "" << endl;
  ros::Rate loop_rate(1000);
  
  while (ros::ok())
  {
    while (current_time != previous_time)
    {
      // cout << test1 << " " << test2 << " " << test3 << endl;
      // cout << test4 << " " << test5 << " " << test6 << endl;
      // cout << test7 << " " << test8 << " " << test9 << endl;
      // cout << " " << endl;
      // cout << test10 << " " << test11 << endl;
      // cout << " " << endl;
      // cout << current_time << endl;
      // cout << "Joint 1: " << joint_pos_global_1 << endl;
      // cout << "Joint 2: " << joint_pos_global_2 << endl;
      // cout << "Joint 3: " << joint_pos_global_3 << endl;
      // cout << "Joint 4: " << joint_pos_global_4 << endl;
      // cout << "Joint 5: " << joint_pos_global_5 << endl;
      // cout << "Joint 6: " << joint_pos_global_6 << endl;
      // cout << "" << endl;
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