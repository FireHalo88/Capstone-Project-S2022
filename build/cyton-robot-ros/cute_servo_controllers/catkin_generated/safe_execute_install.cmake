execute_process(COMMAND "/home/tor/catkin_ws/build/cyton-robot-ros/cute_servo_controllers/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/tor/catkin_ws/build/cyton-robot-ros/cute_servo_controllers/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
