cmake_minimum_required(VERSION 3.0)
project(liba CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/../common/cmake/common.cmake)

configure_file(src/defs.h.in src/defs.h @ONLY)
add_library(liba STATIC
            src/prints.cpp
            src/os/print_${CONFIG_OS}.cpp)
target_include_directories(liba PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

# for defs.h
target_include_directories(liba PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/src)
