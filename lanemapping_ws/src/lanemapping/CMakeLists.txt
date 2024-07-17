cmake_minimum_required(VERSION 3.0.2)
project(lanemapping)

# cmake -DCMAKE_PYTHON_INTERPRETER=/home/seu/anaconda3/bin/python3/
## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)
set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_CXX_FLAGS "-std=c++11")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -Wall -g -pthread")
## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(Eigen REQUIRED QUIET)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  # eigen
  message_generation
)
find_package(Eigen REQUIRED QUIET)

add_message_files(
  DIRECTORY msg
  FILES
  cloud_info.msg
)

include_directories(
	include
	${catkin_INCLUDE_DIRS}
	${EIGEN_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME}_lanemapper src/_lanemapper.cpp)
add_dependencies(${PROJECT_NAME}_lanemapper ${catkin_EXPORTED_TARGETS} ${PROJECT_NAME}_generate_messages_cpp)
target_link_libraries(${PROJECT_NAME}_lanemapper ${catkin_LIBRARIES} ${EIGEN_LIBRARIES})

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES my_pkg
#  CATKIN_DEPENDS roscpp rospy std_msgs
#  DEPENDS system_lib
)


## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)
