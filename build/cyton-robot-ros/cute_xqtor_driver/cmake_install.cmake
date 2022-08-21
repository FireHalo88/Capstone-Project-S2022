# Install script for directory: /home/tor/catkin_ws/src/cyton-robot-ros/cute_xqtor_driver

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/tor/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/tor/catkin_ws/build/cyton-robot-ros/cute_xqtor_driver/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/tor/catkin_ws/build/cyton-robot-ros/cute_xqtor_driver/catkin_generated/installspace/cute_xqtor_driver.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cute_xqtor_driver/cmake" TYPE FILE FILES
    "/home/tor/catkin_ws/build/cyton-robot-ros/cute_xqtor_driver/catkin_generated/installspace/cute_xqtor_driverConfig.cmake"
    "/home/tor/catkin_ws/build/cyton-robot-ros/cute_xqtor_driver/catkin_generated/installspace/cute_xqtor_driverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cute_xqtor_driver" TYPE FILE FILES "/home/tor/catkin_ws/src/cyton-robot-ros/cute_xqtor_driver/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cute_xqtor_driver" TYPE PROGRAM FILES
    "/home/tor/catkin_ws/src/cyton-robot-ros/cute_xqtor_driver/scripts/change_id.py"
    "/home/tor/catkin_ws/src/cyton-robot-ros/cute_xqtor_driver/scripts/info_dump.py"
    "/home/tor/catkin_ws/src/cyton-robot-ros/cute_xqtor_driver/scripts/set_servo_config.py"
    "/home/tor/catkin_ws/src/cyton-robot-ros/cute_xqtor_driver/scripts/set_torque.py"
    )
endif()

