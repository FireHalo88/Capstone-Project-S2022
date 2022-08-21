# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotics_cyton: 0 messages, 5 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotics_cyton_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/TorqueEnable.srv" NAME_WE)
add_custom_target(_robotics_cyton_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotics_cyton" "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/TorqueEnable.srv" ""
)

get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/Float64.srv" NAME_WE)
add_custom_target(_robotics_cyton_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotics_cyton" "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/Float64.srv" ""
)

get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_single_joint.srv" NAME_WE)
add_custom_target(_robotics_cyton_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotics_cyton" "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_single_joint.srv" ""
)

get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_all_joints.srv" NAME_WE)
add_custom_target(_robotics_cyton_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotics_cyton" "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_all_joints.srv" ""
)

get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_enable_robot.srv" NAME_WE)
add_custom_target(_robotics_cyton_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotics_cyton" "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_enable_robot.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_cyton
)
_generate_srv_cpp(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/Float64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_cyton
)
_generate_srv_cpp(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_single_joint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_cyton
)
_generate_srv_cpp(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_all_joints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_cyton
)
_generate_srv_cpp(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_enable_robot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_cyton
)

### Generating Module File
_generate_module_cpp(robotics_cyton
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_cyton
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotics_cyton_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotics_cyton_generate_messages robotics_cyton_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_cpp _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/Float64.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_cpp _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_single_joint.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_cpp _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_all_joints.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_cpp _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_enable_robot.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_cpp _robotics_cyton_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_cyton_gencpp)
add_dependencies(robotics_cyton_gencpp robotics_cyton_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_cyton_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_cyton
)
_generate_srv_eus(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/Float64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_cyton
)
_generate_srv_eus(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_single_joint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_cyton
)
_generate_srv_eus(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_all_joints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_cyton
)
_generate_srv_eus(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_enable_robot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_cyton
)

### Generating Module File
_generate_module_eus(robotics_cyton
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_cyton
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robotics_cyton_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robotics_cyton_generate_messages robotics_cyton_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_eus _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/Float64.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_eus _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_single_joint.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_eus _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_all_joints.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_eus _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_enable_robot.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_eus _robotics_cyton_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_cyton_geneus)
add_dependencies(robotics_cyton_geneus robotics_cyton_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_cyton_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_cyton
)
_generate_srv_lisp(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/Float64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_cyton
)
_generate_srv_lisp(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_single_joint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_cyton
)
_generate_srv_lisp(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_all_joints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_cyton
)
_generate_srv_lisp(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_enable_robot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_cyton
)

### Generating Module File
_generate_module_lisp(robotics_cyton
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_cyton
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotics_cyton_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotics_cyton_generate_messages robotics_cyton_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_lisp _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/Float64.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_lisp _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_single_joint.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_lisp _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_all_joints.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_lisp _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_enable_robot.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_lisp _robotics_cyton_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_cyton_genlisp)
add_dependencies(robotics_cyton_genlisp robotics_cyton_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_cyton_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_cyton
)
_generate_srv_nodejs(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/Float64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_cyton
)
_generate_srv_nodejs(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_single_joint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_cyton
)
_generate_srv_nodejs(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_all_joints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_cyton
)
_generate_srv_nodejs(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_enable_robot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_cyton
)

### Generating Module File
_generate_module_nodejs(robotics_cyton
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_cyton
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robotics_cyton_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robotics_cyton_generate_messages robotics_cyton_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_nodejs _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/Float64.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_nodejs _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_single_joint.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_nodejs _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_all_joints.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_nodejs _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_enable_robot.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_nodejs _robotics_cyton_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_cyton_gennodejs)
add_dependencies(robotics_cyton_gennodejs robotics_cyton_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_cyton_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_cyton
)
_generate_srv_py(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/Float64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_cyton
)
_generate_srv_py(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_single_joint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_cyton
)
_generate_srv_py(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_all_joints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_cyton
)
_generate_srv_py(robotics_cyton
  "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_enable_robot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_cyton
)

### Generating Module File
_generate_module_py(robotics_cyton
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_cyton
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotics_cyton_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotics_cyton_generate_messages robotics_cyton_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_py _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/Float64.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_py _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_single_joint.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_py _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_move_all_joints.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_py _robotics_cyton_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tor/catkin_ws/src/cyton-robot-ros/robotics_cyton/srv/cyton_enable_robot.srv" NAME_WE)
add_dependencies(robotics_cyton_generate_messages_py _robotics_cyton_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_cyton_genpy)
add_dependencies(robotics_cyton_genpy robotics_cyton_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_cyton_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_cyton)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_cyton
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robotics_cyton_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_cyton)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_cyton
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robotics_cyton_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_cyton)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_cyton
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robotics_cyton_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_cyton)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_cyton
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robotics_cyton_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_cyton)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_cyton\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_cyton
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_cyton
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_cyton/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robotics_cyton_generate_messages_py std_msgs_generate_messages_py)
endif()
