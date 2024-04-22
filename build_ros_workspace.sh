#!/bin/bash
# Script to update rosdep, install dependencies, and build the ROS workspace

echo "Updating rosdep database..."
rosdep update
if [ $? -eq 0 ]; then
    echo "rosdep updated successfully."
else
    echo "Failed to update rosdep. Exiting."
    exit 1
fi

echo "Installing dependencies..."
rosdep install -i --from-path src --rosdistro iron -y
#rosdep install --from-paths src --ignore-src -y
if [ $? -eq 0 ]; then
    echo "Dependencies installed successfully."
else
    echo "Failed to install dependencies. Exiting."
    exit 1
fi

echo "Building the workspace..."
colcon build --symlink-install
if [ $? -eq 0 ]; then
    echo "Workspace built successfully."
else
    echo "Failed to build workspace. Exiting."
    exit 1
fi

echo "Workspace is ready to use!"
