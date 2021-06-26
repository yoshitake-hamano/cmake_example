
if ("x$ENV{USE_CCACHE}" STREQUAL "x1")
  message(STATUS "Enable ccache")
  set(CMAKE_C_COMPILER_LAUNCHER ccache)
  set(CMAKE_CXX_COMPILER_LAUNCHER ccache)
endif()
