cmake_minimum_required(VERSION 3.0)
project(cmake_example CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/common/cmake/common.cmake)

add_subdirectory(liba)
add_subdirectory(bina)
