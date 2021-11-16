cmake_minimum_required(VERSION 3.10)
include_guard(GLOBAL) # cmake 3.10 to avoid recurcive add_subdirectory
project(testa CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/../common/cmake/common.cmake)

add_subdirectory(../liba liba)

aux_source_directory(src SOURCES)
#file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR} "src/test_*.c" "src/test_*.cpp") # remove RELATIVE

foreach(SOURCE ${SOURCES})
  get_filename_component(NAME_WE ${SOURCE} NAME_WE)
  message(STATUS "Register ${NAME_WE} test")
  add_executable(${NAME_WE} ${SOURCE})
  target_include_directories(${NAME_WE} PRIVATE ${CppUTest_INCLUDE_DIRS})
  target_link_libraries(${NAME_WE} liba)
  target_link_libraries(${NAME_WE} CppUTest)
  add_test(NAME ${NAME_WE} COMMAND ${NAME_WE} -vv)
endforeach()
