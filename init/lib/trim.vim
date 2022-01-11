source $HOME/.vim/init/lib/cursor.vim

function! lib#trim#preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let c = lib#cursor#preserve()
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call lib#cursor#restore(c)
endfunction

function! lib#trim#strip_trailing_whitespaces()
  call lib#trim#preserve("%s/\\s\\+$//e")
endfunction

function! lib#trim#strip_redundant_lines()
  call lib#trim#preserve("%s/\\(\\n\\n\\)\\n\\+/\\1/g")
endfunction

