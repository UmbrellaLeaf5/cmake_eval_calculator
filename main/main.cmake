include(${MAIN_DIR}/lines_read.cmake)
include(${MAIN_DIR}/lines_calc.cmake)
include(${MAIN_DIR}/lines_write.cmake)

function(main)
  message("--------------------\n Program starts \n--------------------")

  lines_read(${PROJECT_DIR}/input.txt FILE_LINES)

  message("")

  lines_calc("${FILE_LINES}" RES_LINES)

  message("")

  lines_write(${PROJECT_DIR}/output.txt "${RES_LINES}")

  message("--------------------\n  Program ends  \n--------------------")
endfunction()