cmake_minimum_required(VERSION 3.10)
include_guard(GLOBAL) # cmake 3.10 to avoid recurcive add_subdirectory
project(liba::ut CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/../../common/cmake/common.cmake)

add_subdirectory(.. liba)

my_prepare_test_project(liba liba)
