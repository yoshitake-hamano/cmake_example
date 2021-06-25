cmake_minimum_required(VERSION 3.0)
project(bina CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/../common/cmake/user.cmake)

file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR} "src/*.c" "src/*.cpp") # remove RELATIVE

# depend other modules
#
# stackoverflow > CMake : multiple subprojects using the same static library
# https://stackoverflow.com/questions/8439631/cmake-multiple-subprojects-using-the-same-static-library
if (NOT TARGET liba)
  add_subdirectory(../liba liba)
endif()

add_executable(bina ${SOURCES})
target_link_libraries(bina liba)
