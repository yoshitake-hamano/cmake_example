cmake_minimum_required(VERSION 3.10)
include_guard(GLOBAL) # since 3.10
# invoke include(common.cmake), after project()
#
# CMAKE_VERBOSE_MAKEFILE
#
# This variable is a cache entry initialized (to FALSE) by the project() command.
# Users may enable the option in their local build tree
# to get more verbose output from Makefile builds and
# show each command line as it is launched.
# https://cmake.org/cmake/help/latest/variable/CMAKE_VERBOSE_MAKEFILE.html
set(CMAKE_VERBOSE_MAKEFILE 1)
message(STATUS "Include common.cmake")

include(${CMAKE_CURRENT_LIST_DIR}/config.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/ccache.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/distcc.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/cpputest.cmake)
