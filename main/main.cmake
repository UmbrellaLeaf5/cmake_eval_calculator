include(${MAIN_DIR}/lines_read.cmake)
include(${MAIN_DIR}/lines_calc.cmake)

function(main)
  message("--------------------\n Programm starts \n--------------------")

  lines_read(${PROJECT_DIR}/input.txt FILE_LINES)

  message("")

  lines_calc("${FILE_LINES}" RES_LINES)

  message("--------------------\n  Programm ends  \n--------------------")
endfunction()