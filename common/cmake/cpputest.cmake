enable_testing()

if(DEFINED ENV{CPPUTEST_HOME})
  message("Using CppUTest found in $ENV{CPPUTEST_HOME}")
else()
  message(FATAL_ERROR "CPPUTEST_HOME is not set; You must tell CMake where to find CppUTest")
endif()

add_library(CppUTest STATIC IMPORTED)
set(CppUTest_INCLUDE_DIRS $ENV{CPPUTEST_HOME}/include)
set_property(TARGET CppUTest PROPERTY
             IMPORTED_LOCATION $ENV{CPPUTEST_HOME}/cpputest_build/src/CppUTest/libCppUTest.a)

add_library(CppUTestExt STATIC IMPORTED)
set_property(TARGET CppUTestExt PROPERTY
             IMPORTED_LOCATION $ENV{CPPUTEST_HOME}/cpputest_build/src/CppUTestExt/libCppUTestExt.a)
