cmake_minimum_required(VERSION 3.10)
include_guard(GLOBAL) # cmake 3.10 to avoid recurcive add_subdirectory
project(bina CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/../common/cmake/common.cmake)

# # depend other modules
# #
# # stackoverflow > CMake : multiple subprojects using the same static library
# # https://stackoverflow.com/questions/8439631/cmake-multiple-subprojects-using-the-same-static-library
# if (${CMAKE_CURRENT_SOURCE_DIR} STREQUAL ${CMAKE_SOURCE_DIR})
# # since cmake 3.21
# # if (${PROJECT_IS_TOP_LEVEL})
#   add_subdirectory(../liba liba)
# endif()
add_subdirectory(../liba liba)

file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR} "src/*.c" "src/*.cpp") # remove RELATIVE

add_executable(bina ${SOURCES})
target_link_libraries(bina liba)

# $<TARGET_FILE:bina> is a generator expression
add_custom_target(md5 ALL
  COMMAND md5 $<TARGET_FILE:bina> > $<TARGET_FILE:bina>.md5
  COMMENT "Building md5")
