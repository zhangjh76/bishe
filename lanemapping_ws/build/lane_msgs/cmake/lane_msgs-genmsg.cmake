# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lane_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ilane_msgs:/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lane_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg" NAME_WE)
add_custom_target(_lane_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lane_msgs" "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg" "lane_msgs/LanePoint"
)

get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LaneList.msg" NAME_WE)
add_custom_target(_lane_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lane_msgs" "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LaneList.msg" "std_msgs/Header:lane_msgs/LanePoint:lane_msgs/Lane"
)

get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg" NAME_WE)
add_custom_target(_lane_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lane_msgs" "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lane_msgs
)
_generate_msg_cpp(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LaneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg;/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lane_msgs
)
_generate_msg_cpp(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lane_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(lane_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lane_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lane_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lane_msgs_generate_messages lane_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_cpp _lane_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LaneList.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_cpp _lane_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_cpp _lane_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lane_msgs_gencpp)
add_dependencies(lane_msgs_gencpp lane_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lane_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lane_msgs
)
_generate_msg_eus(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LaneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg;/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lane_msgs
)
_generate_msg_eus(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lane_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(lane_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lane_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lane_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lane_msgs_generate_messages lane_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_eus _lane_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LaneList.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_eus _lane_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_eus _lane_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lane_msgs_geneus)
add_dependencies(lane_msgs_geneus lane_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lane_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lane_msgs
)
_generate_msg_lisp(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LaneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg;/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lane_msgs
)
_generate_msg_lisp(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lane_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(lane_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lane_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lane_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lane_msgs_generate_messages lane_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_lisp _lane_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LaneList.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_lisp _lane_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_lisp _lane_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lane_msgs_genlisp)
add_dependencies(lane_msgs_genlisp lane_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lane_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lane_msgs
)
_generate_msg_nodejs(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LaneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg;/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lane_msgs
)
_generate_msg_nodejs(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lane_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(lane_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lane_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lane_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lane_msgs_generate_messages lane_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_nodejs _lane_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LaneList.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_nodejs _lane_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_nodejs _lane_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lane_msgs_gennodejs)
add_dependencies(lane_msgs_gennodejs lane_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lane_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lane_msgs
)
_generate_msg_py(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LaneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg;/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lane_msgs
)
_generate_msg_py(lane_msgs
  "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lane_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(lane_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lane_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lane_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lane_msgs_generate_messages lane_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_py _lane_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LaneList.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_py _lane_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seu/workspace/zjh_ws/bishe/lanemapping_ws/src/lane_msgs/msg/LanePoint.msg" NAME_WE)
add_dependencies(lane_msgs_generate_messages_py _lane_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lane_msgs_genpy)
add_dependencies(lane_msgs_genpy lane_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lane_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lane_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lane_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(lane_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lane_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(lane_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lane_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lane_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(lane_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lane_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(lane_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lane_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lane_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(lane_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lane_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(lane_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lane_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lane_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(lane_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lane_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(lane_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lane_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lane_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lane_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(lane_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lane_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(lane_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
