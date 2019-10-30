# set toolchain
set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/cmake/LRIOToolchain.cmake)

cmake_minimum_required(VERSION 3.15)

project(LearnRobotics.io CXX)

# build flags
include(${CMAKE_SOURCE_DIR}/cmake/LRIOBuildFlags.cmake)

set(LRIO_SOURCES hello.cxx)

# create index.html
add_executable(lrio ${LRIO_SOURCES})
add_executable(output ALIAS lrio)

# create a launch target that depends on creating index.html
add_custom_target(launch
   COMMAND ${NODEJS_RUNTIME} "$<TARGET_FILE_NAME:output>"
   WORKING_DIRECTORY $<TARGET_FILE_DIR:output>
)
add_dependencies(launch output)


