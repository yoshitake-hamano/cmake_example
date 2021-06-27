enable_testing()

add_library(CppUTest STATIC IMPORTED)
set(CppUTest_INCLUDE_DIRS $ENV{CPPUTEST_HOME}/include)
set_property(TARGET CppUTest PROPERTY
             IMPORTED_LOCATION $ENV{CPPUTEST_HOME}/cpputest_build/src/CppUTest/libCppUTest.a)

add_library(CppUTestExt STATIC IMPORTED)
set_property(TARGET CppUTestExt PROPERTY
             IMPORTED_LOCATION $ENV{CPPUTEST_HOME}/cpputest_build/src/CppUTestExt/libCppUTestExt.a)
