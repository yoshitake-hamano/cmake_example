cmake_minimum_required(VERSION 3.0)
project(cmake_example CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/common/cmake/common.cmake)

if (${CMAKE_CURRENT_SOURCE_DIR} STREQUAL ${CMAKE_SOURCE_DIR})
# since cmake 3.21
# if (${PROJECT_IS_TOP_LEVEL})
  add_subdirectory(liba)
  add_subdirectory(bina)
  add_subdirectory(testa)
endif()
