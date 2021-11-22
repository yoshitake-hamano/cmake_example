cmake_minimum_required(VERSION 3.10)
include_guard(GLOBAL) # cmake 3.10 to avoid recurcive add_subdirectory
project(design CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/../common/cmake/common.cmake)

file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR} "*.plant") # remove RELATIVE
add_custom_target(png ALL
  COMMAND plantuml ${SOURCES} -o ${CMAKE_CURRENT_BINARY_DIR}
  COMMENT "Building plantuml")
