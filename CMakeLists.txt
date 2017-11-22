cmake_minimum_required(VERSION 2.8.3)
project(scalable_system_setup)
find_package(catkin REQUIRED)
catkin_package()

# Version 1.0 (increment this comment to trigger a CMake update)
catkin_add_env_hooks(scalable SHELLS bash DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/env-hooks)

