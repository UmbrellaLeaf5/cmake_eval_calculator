include(${MAIN_DIR}/lines_read.cmake)

function(main)
  message("--------------------\n Programm starts \n--------------------")

  lines_read(${PROJECT_DIR}/input.txt FILE_LINES)

  message("--------------------\n  Programm ends  \n--------------------")
endfunction()