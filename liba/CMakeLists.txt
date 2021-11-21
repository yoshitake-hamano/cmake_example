cmake_minimum_required(VERSION 3.10)
include_guard(GLOBAL) # cmake 3.10 to avoid recurcive add_subdirectory
project(liba CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/../common/cmake/common.cmake)
add_subdirectory(libaa)
add_subdirectory(ut)

configure_file(src/defs.h.in src/defs.h @ONLY)
add_library(liba STATIC
            src/prints.cpp
            src/os/print_${CONFIG_OS}.cpp)

my_prepare_project(liba)
