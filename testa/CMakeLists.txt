cmake_minimum_required(VERSION 3.0)
project(testa CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/../common/cmake/common.cmake)

if (NOT TARGET liba)
  add_subdirectory(../liba liba)
endif()

file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR} "src/test_*.c" "src/test_*.cpp") # remove RELATIVE

message(STATUS "Register ${SOURCE}")
foreach(SOURCE ${SOURCES})
  get_filename_component(NAME_WE ${SOURCE} NAME_WE)
  message(STATUS "Register ${NAME_WE}")
  add_executable(${NAME_WE} ${SOURCE})
  target_include_directories(${NAME_WE} PRIVATE ${CppUTest_INCLUDE_DIRS})
  target_link_libraries(${NAME_WE} liba)
  target_link_libraries(${NAME_WE} CppUTest)
  add_test(NAME ${NAME_WE} COMMAND ${NAME_WE})
endforeach()
