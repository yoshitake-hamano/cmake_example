cmake_minimum_required(VERSION 3.0)
project(bina CXX)
file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR} "src/*.c" "src/*.cpp") # remove RELATIVE
add_executable(bina ${SOURCES})
