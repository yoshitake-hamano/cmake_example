cmake_minimum_required(VERSION 3.0)
project(cmake_example)
file(GLOB_RECURSE SOURCES RELATIVE ${CMAKE_SOURCE_DIR} "src/*.c" "src/*.cpp")
add_executable(main ${SOURCES})
