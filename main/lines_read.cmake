function(lines_read FILE_PATH OUTPUT_LINES)
  file(STRINGS "${FILE_PATH}" FILE_LINES)

  set(LINE_COUNTER 1)

  message("File lines:")

  foreach(LINE ${FILE_LINES})
    message("line ${LINE_COUNTER}: ${LINE}")
    math(EXPR LINE_COUNTER "${LINE_COUNTER} + 1")
  endforeach()

  set(${OUTPUT_LINES} ${FILE_LINES} PARENT_SCOPE)
endfunction()
