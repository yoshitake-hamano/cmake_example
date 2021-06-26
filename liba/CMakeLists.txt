cmake_minimum_required(VERSION 3.0)
project(liba CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/../common/cmake/common.cmake)

file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR} "src/*.c" "src/*.cpp") # remove RELATIVE

add_library(liba STATIC ${SOURCES})
target_include_directories(liba PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
