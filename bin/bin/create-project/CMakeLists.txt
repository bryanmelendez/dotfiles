# Minimum CMake version required
cmake_minimum_required(VERSION 3.10)

# Project name and C standard
project(example)

# Set the C standard
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED True)

# Define the path to the source directory
set(SRC_DIR "${CMAKE_SOURCE_DIR}/src")

# Collect all source files in the src/ directory
file(GLOB_RECURSE SOURCES "${SRC_DIR}/*.c")

# Specify the executable to be built
add_executable(${PROJECT_NAME} ${SOURCES})

# Optionally, specify include directories (if you have any headers in include/)
# target_include_directories(${PROJECT_NAME} PRIVATE "${CMAKE_SOURCE_DIR}/include")
