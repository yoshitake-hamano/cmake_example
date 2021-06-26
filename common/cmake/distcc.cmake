
if ("x$ENV{USE_DISTCC}" STREQUAL "x1")
  message(STATUS "Enable distcc")
  set(CMAKE_C_COMPILER_LAUNCHER distcc)
  set(CMAKE_CXX_COMPILER_LAUNCHER distcc)
endif()
