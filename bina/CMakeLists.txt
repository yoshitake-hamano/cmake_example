cmake_minimum_required(VERSION 3.0)
project(bina CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/../common/cmake/user.cmake)

file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR} "src/*.c" "src/*.cpp") # remove RELATIVE
add_executable(bina ${SOURCES})
target_link_libraries(bina liba)
