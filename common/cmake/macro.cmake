
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
    add_executable(${NAME_WE} ${SOURCE})
    my_prepare_project(${NAME_WE})
    target_include_directories(${NAME_WE} PRIVATE ${CppUTest_INCLUDE_DIRS})
    foreach(arg ${ARGN})
      target_link_libraries(${NAME_WE} ${arg})
    endforeach()
    target_link_libraries(${NAME_WE} CppUTest)
    add_test(NAME ${NAME_WE} COMMAND ${NAME_WE} -vv)
  endforeach()
endmacro()
