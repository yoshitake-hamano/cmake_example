
macro(my_prepare_project name)
  target_include_directories(${name} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
  target_include_directories(${name} PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/src)
endmacro()
