#!/usr/bin/env python3

"""Extract images from a rosbag.
"""

import os
import argparse

import cv2

import rosbag   
from sensor_msgs.msg import Image
from cv_bridge import CvBridge

def main():
    """Extract a folder of images from a rosbag.
    """
    parser = argparse.ArgumentParser(description="Extract images from a ROS bag.")
    parser.add_argument("bag_file", help="Input ROS bag.")
    parser.add_argument("output_dir", help="Output directory.")
    parser.add_argument("image_topic", help="Image topic.")

    args = parser.parse_args()

    print ("Extract images from %s on topic %s into %s" % (args.bag_file,
                                                          args.image_topic, args.output_dir))

    bag = rosbag.Bag(args.bag_file, "r")
    bridge = CvBridge()
    count = 0
    # #Uncomment this section and comment the last section for raw depth images [NOTE: Remember to change topic name to /camera/depth/image_rect_raw]
    for topic, msg, t in bag.read_messages(topics=[args.image_topic]):
        cv_img = bridge.imgmsg_to_cv2(msg, desired_encoding="passthrough")  
        cv2.imwrite(os.path.join(args.output_dir, "frame%i.png" % count), cv_img)
        print ("Wrote image %i" % count)
        count += 1
    bag.close()
    #Uncomment this section and comment the last section for Joint Angles [NOTE: Remember to change topic name to /joint_angles]
    # for topic, msg, t in bag.read_messages(topics=[args.image_topic]):
    #     lineOfText = str(msg)
    #     with open('joint_anglesv3.txt', 'a') as f:
    #         index_secs = lineOfText.find("secs:")
    #         index_velocity = lineOfText.find("velocity")
    #         index_frameid = lineOfText.find("frame_id:")
    #         index_position = lineOfText.find("position:")
    #         new_str = lineOfText[index_secs:index_frameid] + " " + lineOfText[index_position:index_velocity]+'\n'          
    #         f.write(new_str)    
    #         print ("Wrote image %i" % count)
    # bag.close()

    #Uncomment this section and comment the last section for Joint Angles Locations [NOTE: Remember to change topic name to /camera/depth/camera_info]
    # for topic, msg, t in bag.read_messages(topics=[args.image_topic]):
    #     lineOfText = str(msg)
    #     with open('joint_angles_timing.txt', 'a') as f:
    #         index_secs = lineOfText.find("secs:")
    #         index_frameid = lineOfText.find("frame_id:")
    #         new_str = str(count) + " " + lineOfText[index_secs:index_frameid] + '\n'          
    #         f.write(new_str)    
    #     count += 1
    # bag.close()

    return

if __name__ == '__main__':
    main()