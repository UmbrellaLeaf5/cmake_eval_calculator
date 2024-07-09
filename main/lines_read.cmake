# language: CMake

# The lines_read function reads the contents of the input file
function(lines_read FILE_PATH OUTPUT_LINES)
  # Read the file contents and store them in the FILE_LINES variable
  file(STRINGS "${FILE_PATH}" FILE_LINES)

  # Print a message to indicate that the file was opened successfully
  message("-- Open ${FILE_PATH} with STRINGS: success \n")

  # Initialize a line counter
  set(LINE_COUNTER 1)

  # Print a message to indicate the start of the file contents
  message("File lines:")

  # Iterate through the file lines and print them
  foreach(LINE ${FILE_LINES})
    message("line ${LINE_COUNTER}: ${LINE}")
    math(EXPR LINE_COUNTER "${LINE_COUNTER} + 1")
  endforeach()

  # Set the OUTPUT_LINES variable in the parent scope (parent sence)
  set(${OUTPUT_LINES} ${FILE_LINES} PARENT_SCOPE)
endfunction()
