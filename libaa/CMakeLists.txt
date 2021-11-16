cmake_minimum_required(VERSION 3.10)
include_guard(GLOBAL) # cmake 3.10 to avoid recurcive add_subdirectory
project(libaa CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/../common/cmake/common.cmake)

add_library(libaa STATIC
            src/libaa.cpp)
my_prepare_project(libaa)

