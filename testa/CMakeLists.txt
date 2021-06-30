cmake_minimum_required(VERSION 3.0)
project(testa CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/../common/cmake/common.cmake)

if (${CMAKE_CURRENT_SOURCE_DIR} STREQUAL ${CMAKE_SOURCE_DIR})
# since cmake 3.21
# if (${PROJECT_IS_TOP_LEVEL})
  add_subdirectory(../liba liba)
endif()

aux_source_directory(src SOURCES)
#file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR} "src/test_*.c" "src/test_*.cpp") # remove RELATIVE

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
