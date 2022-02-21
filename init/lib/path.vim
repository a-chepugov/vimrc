function! lib#path#pwd_from_buffer()
  let pathname = expand("%:p:h")
  echo pathname
  execute 'cd ' pathname
endfunction

function lib#path#cwd_name()
  let l:cwd = getcwd()
  return fnamemodify(l:cwd, ':t')
endfunction

function! lib#path#create_dir(dirname)
  if (filewritable(a:dirname) == 0)
    call mkdir(a:dirname, 'p')
  endif
endfunction

