include(${MAIN_DIR}/file_lines_read.cmake)

function(main)
  message("--------------------\n Programm starts \n--------------------")

  file_lines_read(${PROJECT_DIR}/input.txt FILE_LINES)

  message("--------------------\n  Programm ends  \n--------------------")
endfunction()