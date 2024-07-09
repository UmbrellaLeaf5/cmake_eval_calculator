function(lines_calc LINES OUTPUT_RES_LINES)
  set(LINE_COUNTER 1)

  message("Resaults:")

  foreach(LINE ${LINES})
    math(EXPR RES "${LINE}")
    message("line ${LINE_COUNTER}: ${RES}")
    math(EXPR LINE_COUNTER "${LINE_COUNTER} + 1")
    list(APPEND RES RES_LINES)
  endforeach()
endfunction()
