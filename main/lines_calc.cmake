# language: CMake

# The lines_calc function performs calculations on the input lines
function(lines_calc LINES OUTPUT_RES_LINES)
  # Initialize a line counter
  set(LINE_COUNTER 1)

  # Print a message to indicate the start of the results
  message("Results:")

  # Iterate through the input lines, perform a calculation, and store the results
  foreach(LINE ${LINES})
    # TODO: in fact, there should be my own function
    math(EXPR RES "${LINE}")

    # Print the calculated result for each line
    message("line ${LINE_COUNTER}: ${RES}")
    math(EXPR LINE_COUNTER "${LINE_COUNTER} + 1")
    list(APPEND RES_LINES "${RES}")
  endforeach()

  # Set the OUTPUT_RES_LINES variable in the parent scope
  set(${OUTPUT_RES_LINES} ${RES_LINES} PARENT_SCOPE)
endfunction()
