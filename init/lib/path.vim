function! lib#path#pwd_from_buffer()
  let pathname = expand("%:p:h")
  echo pathname
  execute 'cd ' pathname
endfunction
