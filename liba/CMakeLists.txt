cmake_minimum_required(VERSION 3.0)
project(liba CXX)
file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR} "src/*.c" "src/*.cpp") # remove RELATIVE
add_library(liba STATIC ${SOURCES})
