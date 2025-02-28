# language: CMake

# Include the necessary CMake files
include(${MAIN_DIR}/lines_read.cmake)
include(${MAIN_DIR}/lines_calc.cmake)
include(${MAIN_DIR}/lines_write.cmake)

# The main function that drives the program
function(main)
  message("--------------------\n Program starts \n--------------------")
  message("")

  # Call the lines_read function to read the input file
  lines_read(${PROJECT_DIR}/input.txt FILE_LINES)

  # Print an empty message for readability
  message("")

  # Call the lines_calc function to perform calculations on the lines
  lines_calc("${FILE_LINES}" RES_LINES)

  # Print an empty message for readability
  message("")

  # Call the lines_write function to write the results to the output file
  lines_write(${PROJECT_DIR}/output.txt "${RES_LINES}")

  message("--------------------\n  Program ends  \n--------------------")
endfunction()
