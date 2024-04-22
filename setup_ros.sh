#!/bin/bash
# Source ROS 2 Iron setup files

export ROS_DISTRO=iron
export ROS_PYTHON_VERSION=3
# rtabmap_ros was crashing until i reduced the number of build processes to 1
export MAKEFLAGS="-j1"

echo "Sourcing ROS Iron workspace..."
echo "~/ros/ros2_iron/install/setup.bash"
source ~/ros/ros2_iron/install/setup.bash

echo "Sourcing dependences..."
echo "source /opt/ros/iron/setup.bash"
source /opt/ros/iron/setup.bash

echo "ROS environment sourced successfully."
