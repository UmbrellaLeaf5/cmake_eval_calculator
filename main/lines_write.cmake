# language: CMake

# The lines_write function writes the calculated results to the output file
function(lines_write FILE_PATH NEW_FILE_LINES)
  # Clear the output file before writing new content
  file(WRITE "${FILE_PATH}" "")

  # Print a message to indicate that the file was opened successfully for writing
  message("-- Open ${FILE_PATH} with WRITE: success \n")

  # Print a message to indicate the start of writing the results to the file
  message("Writing resaults to file... \n")

  # Iterate through the calculated results and write them to the output file
  foreach(LINE ${NEW_FILE_LINES})
    file(APPEND "${FILE_PATH}" "${LINE}\n")
  endforeach()
endfunction()
