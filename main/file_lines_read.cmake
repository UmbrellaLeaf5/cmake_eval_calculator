
function(file_lines_read FILE_NAME)
  file(STRINGS "${FILE_NAME}" FILE_LINES)

  set(LINE_COUNTER 1)

  foreach(LINE ${FILE_LINES})
    message("line ${LINE_COUNTER}: ${LINE}")
    math(EXPR LINE_COUNTER "${LINE_COUNTER} + 1")
  endforeach()
endfunction()
