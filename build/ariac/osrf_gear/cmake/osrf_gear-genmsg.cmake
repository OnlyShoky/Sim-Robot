# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "osrf_gear: 13 messages, 6 services")

set(MSG_I_FLAGS "-Iosrf_gear:/home/shoky/ariac_ws/src/ariac/osrf_gear/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(osrf_gear_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/SubmitTray.srv" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/SubmitTray.srv" ""
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitTray.msg" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitTray.msg" "osrf_gear/Kit:osrf_gear/KitObject:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/VacuumGripperControl.srv" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/VacuumGripperControl.srv" ""
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg" "geometry_msgs/Quaternion:osrf_gear/KitObject:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg" ""
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/VacuumGripperState.msg" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/VacuumGripperState.msg" ""
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Proximity.msg" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Proximity.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/PopulationControl.srv" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/PopulationControl.srv" ""
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg" ""
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/TrayContents.msg" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/TrayContents.msg" "geometry_msgs/Quaternion:osrf_gear/DetectedObject:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Order.msg" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Order.msg" "osrf_gear/Kit:osrf_gear/KitObject:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/PopulationState.msg" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/PopulationState.msg" ""
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/ConveyorBeltControl.srv" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/ConveyorBeltControl.srv" "osrf_gear/ConveyorBeltState"
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/LogicalCameraImage.msg" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/LogicalCameraImage.msg" "geometry_msgs/Quaternion:osrf_gear/Model:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/GetMaterialLocations.srv" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/GetMaterialLocations.srv" "osrf_gear/StorageUnit"
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/AGVControl.srv" NAME_WE)
add_custom_target(_osrf_gear_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "osrf_gear" "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/AGVControl.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitTray.msg"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_msg_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_msg_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_msg_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_msg_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_msg_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_msg_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_msg_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_msg_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/TrayContents.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_msg_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Order.msg"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_msg_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/PopulationState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_msg_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_msg_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)

### Generating Services
_generate_srv_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/SubmitTray.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_srv_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_srv_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/PopulationControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_srv_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/GetMaterialLocations.srv"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_srv_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)
_generate_srv_cpp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/AGVControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
)

### Generating Module File
_generate_module_cpp(osrf_gear
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(osrf_gear_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(osrf_gear_generate_messages osrf_gear_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/SubmitTray.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitTray.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Proximity.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/PopulationControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/TrayContents.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Order.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/PopulationState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/GetMaterialLocations.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/AGVControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_cpp _osrf_gear_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(osrf_gear_gencpp)
add_dependencies(osrf_gear_gencpp osrf_gear_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS osrf_gear_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitTray.msg"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_msg_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_msg_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_msg_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_msg_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_msg_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_msg_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_msg_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_msg_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/TrayContents.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_msg_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Order.msg"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_msg_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/PopulationState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_msg_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_msg_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)

### Generating Services
_generate_srv_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/SubmitTray.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_srv_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_srv_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/PopulationControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_srv_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/GetMaterialLocations.srv"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_srv_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)
_generate_srv_eus(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/AGVControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
)

### Generating Module File
_generate_module_eus(osrf_gear
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(osrf_gear_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(osrf_gear_generate_messages osrf_gear_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/SubmitTray.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitTray.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Proximity.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/PopulationControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/TrayContents.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Order.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/PopulationState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/GetMaterialLocations.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/AGVControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_eus _osrf_gear_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(osrf_gear_geneus)
add_dependencies(osrf_gear_geneus osrf_gear_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS osrf_gear_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitTray.msg"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_msg_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_msg_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_msg_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_msg_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_msg_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_msg_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_msg_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_msg_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/TrayContents.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_msg_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Order.msg"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_msg_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/PopulationState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_msg_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_msg_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)

### Generating Services
_generate_srv_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/SubmitTray.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_srv_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_srv_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/PopulationControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_srv_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/GetMaterialLocations.srv"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_srv_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)
_generate_srv_lisp(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/AGVControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
)

### Generating Module File
_generate_module_lisp(osrf_gear
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(osrf_gear_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(osrf_gear_generate_messages osrf_gear_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/SubmitTray.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitTray.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Proximity.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/PopulationControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/TrayContents.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Order.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/PopulationState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/GetMaterialLocations.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/AGVControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_lisp _osrf_gear_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(osrf_gear_genlisp)
add_dependencies(osrf_gear_genlisp osrf_gear_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS osrf_gear_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitTray.msg"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_msg_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_msg_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_msg_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_msg_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_msg_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_msg_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_msg_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_msg_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/TrayContents.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_msg_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Order.msg"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_msg_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/PopulationState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_msg_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_msg_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)

### Generating Services
_generate_srv_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/SubmitTray.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_srv_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_srv_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/PopulationControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_srv_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/GetMaterialLocations.srv"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_srv_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)
_generate_srv_nodejs(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/AGVControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
)

### Generating Module File
_generate_module_nodejs(osrf_gear
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(osrf_gear_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(osrf_gear_generate_messages osrf_gear_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/SubmitTray.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitTray.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Proximity.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/PopulationControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/TrayContents.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Order.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/PopulationState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/GetMaterialLocations.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/AGVControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_nodejs _osrf_gear_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(osrf_gear_gennodejs)
add_dependencies(osrf_gear_gennodejs osrf_gear_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS osrf_gear_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitTray.msg"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_msg_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_msg_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_msg_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_msg_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_msg_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_msg_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_msg_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_msg_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/TrayContents.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_msg_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Order.msg"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_msg_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/PopulationState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_msg_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_msg_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)

### Generating Services
_generate_srv_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/SubmitTray.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_srv_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_srv_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/PopulationControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_srv_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/GetMaterialLocations.srv"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_srv_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)
_generate_srv_py(osrf_gear
  "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/AGVControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
)

### Generating Module File
_generate_module_py(osrf_gear
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(osrf_gear_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(osrf_gear_generate_messages osrf_gear_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/SubmitTray.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitTray.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Model.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Kit.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/StorageUnit.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/DetectedObject.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Proximity.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/PopulationControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/TrayContents.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/Order.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/PopulationState.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/GetMaterialLocations.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/msg/KitObject.msg" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shoky/ariac_ws/src/ariac/osrf_gear/srv/AGVControl.srv" NAME_WE)
add_dependencies(osrf_gear_generate_messages_py _osrf_gear_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(osrf_gear_genpy)
add_dependencies(osrf_gear_genpy osrf_gear_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS osrf_gear_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/osrf_gear
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(osrf_gear_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(osrf_gear_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/osrf_gear
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(osrf_gear_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(osrf_gear_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/osrf_gear
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(osrf_gear_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(osrf_gear_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/osrf_gear
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(osrf_gear_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(osrf_gear_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/osrf_gear
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(osrf_gear_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(osrf_gear_generate_messages_py std_msgs_generate_messages_py)
endif()
