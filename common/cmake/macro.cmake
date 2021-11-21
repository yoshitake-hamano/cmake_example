
macro(my_prepare_project name)
  target_include_directories(${name} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
  target_include_directories(${name} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/src)
  target_include_directories(${name} PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/src) # for configure_file(src/foo.h.in src/foo.h @ONLY)
endmacro()

macro(my_prepare_test_project)
  aux_source_directory(src SOURCES)
  #file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR} "src/test_*.c" "src/test_*.cpp") # remove RELATIVE

  foreach(SOURCE ${SOURCES})
    get_filename_component(NAME_WE ${SOURCE} NAME_WE)
    message(STATUS "Register ${NAME_WE} test")
    add_executable(${NAME_WE} EXCLUDE_FROM_ALL ${SOURCE})
    my_prepare_project(${NAME_WE})
    foreach(arg ${ARGN})
      target_link_libraries(${NAME_WE} ${arg})
    endforeach()
    target_link_libraries(${NAME_WE} CppUTest)

    # add_test(NAME ${NAME_WE} COMMAND ${NAME_WE} -vv)
    #
    # stakoverflow > CMake & CTest : make test doesn't build tests
    # https://stackoverflow.com/questions/733475/cmake-ctest-make-test-doesnt-build-tests
    add_test(ctest_build_test_code
             "${CMAKE_COMMAND}" --build ${CMAKE_BINARY_DIR} --target ${NAME_WE})
    add_test(ctest_run_test_code ${NAME_WE})
    set_tests_properties(ctest_run_test_code
                         PROPERTIES DEPENDS ctest_build_test_code)
  endforeach()
endmacro()
