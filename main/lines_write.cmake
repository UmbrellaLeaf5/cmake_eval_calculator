function(lines_write FILE_PATH NEW_FILE_LINES)
  file(WRITE "${FILE_PATH}" "")
  message("-- Open ${FILE_PATH} with WRITE: success \n")

  message("Writing resaults to file... \n")

  foreach(LINE ${NEW_FILE_LINES})
    file(APPEND "${FILE_PATH}" "${LINE}\n")
  endforeach()
endfunction()