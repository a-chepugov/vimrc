function! lib#menu#handle() 
  let line = line('.')
  call deletebufline(bufname(), 1, '$')
  bwipeout!
  echo l:line
endfunction

function! lib#menu#create()
  :new
  set buftype=prompt
  return bufname()
endfunction

function! lib#menu#render(name, list)
  call deletebufline(a:name, 1, '$')
  call appendbufline(a:name, 0, a:list)
endfunction

function! lib#menu#map()
  nmap <buffer><CR> :call lib#menu#handle()<CR>
endfunction

function! lib#menu#menu(register_name)
  let b:name = lib#menu#create()
  call lib#register#map()
  let b:list = ["first", "second", "third"]
  call lib#menu#render(b:name, b:list)
  autocmd InsertLeave <buffer> call lib#menu#render(b:name, b:list) 
endfunction

nmap <leader>qq :call lib#menu#menu('b')<CR>
