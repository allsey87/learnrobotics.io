# set toolchain
set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/cmake/LRIOToolchain.cmake)

cmake_minimum_required(VERSION 3.15)

project(LearnRobotics.io CXX)

# build flags
include(${CMAKE_SOURCE_DIR}/cmake/LRIOBuildFlags.cmake)

# create index.html
add_executable(index hello.cxx)
