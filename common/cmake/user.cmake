# invoke include(user.cmake), after project()
#
# CMAKE_VERBOSE_MAKEFILE
#
# This variable is a cache entry initialized (to FALSE) by the project() command.
# Users may enable the option in their local build tree
# to get more verbose output from Makefile builds and
# show each command line as it is launched.
# https://cmake.org/cmake/help/latest/variable/CMAKE_VERBOSE_MAKEFILE.html
set(CMAKE_VERBOSE_MAKEFILE 1)
message(STATUS "include user.cmake")
