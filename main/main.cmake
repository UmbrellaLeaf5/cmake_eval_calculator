include(${MAIN_DIR}/file_lines_read.cmake)

function(main)
  message(STATUS "Programm starts")

  file_lines_read(${PROJECT_DIR}/input.txt)

  message(STATUS "Programm ends")
endfunction()