" Set foldmethod to marker
set foldmethod=marker

" define custom fold markers
set foldmarker={{{,}}}

" Function to format JSON using jq
function! FormatJSONWithJQ()
  " Save the selected text into a variable
  let selected_text = join(getline("'<", "'>"), "\n")

  " Run jq to format the JSON and capture the output
  let formatted_json = system('echo ' . shellescape(selected_text) . ' | jq .')

  " Check if jq returned an error (if the JSON was invalid)
  if v:shell_error
    echo "Invalid JSON"
    return
  endif

  " Replace the selected text with the formatted JSON
  let lines = split(formatted_json, "\n")
  call setline("'<", lines)

  " If the formatted JSON has more lines than the selected block, delete any excess lines
  if len(lines) < line("'") - line("'<")
    execute line("'") . ',-' . line("'<") . 'd'
  endif
endfunction

" Map the function to a keybinding (e.g., <leader>j)
xnoremap <F5> :call FormatJSONWithJQ()<CR>

