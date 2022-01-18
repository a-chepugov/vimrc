function! lib#menu#create()
  :new
  set buftype=prompt
  return bufnr()
endfunction

function! lib#menu#render(bnr, list)
  call deletebufline(a:bnr, 1, '$')
  let l:lnum = 0
  for item in a:list
    call setbufline(a:bnr, l:lnum, item.name)
    let l:lnum = l:lnum + 1
  endfor
  normal gg
endfunction

function! lib#menu#handle(list) 
  let line = line('.')
  call deletebufline(bufname(), 1, '$')
  bwipeout!
  echo l:line
  echo a:list[l:line].map['<CR>']
  echo a:list[l:line].map['<CR>'](1)
endfunction

function! lib#menu#map(list)
  nmap <buffer><CR> :call lib#menu#handle(b:list)<CR>
  nmap <buffer><Esc> :bdelete!<CR>
endfunction

function! lib#menu#menu(list)
  let b:bufnr = lib#menu#create()
  let b:list = a:list
  call lib#menu#map(b:list)
  call lib#menu#render(b:bufnr, b:list)
  autocmd InsertLeave <buffer> call lib#menu#render(b:bufnr, b:list) 
endfunction

function! Bufslist()
  let blist = []
  for b in getbufinfo({'bufloaded': 1, 'buflisted': 1})
    let name = 
    \ ( b.changed ? "ch" : "__" )
    \. ( b.loaded ? "lo" : "__" )
    \. ( b.hidden ? "hi" : "__" )
    \. ( b.listed ? "li" : "__" )
    \. " " . b.bufnr . "\t"
    \. b.name
    "call add(blist, {'name': name, 'map': {'<CR>': {k -> win_gotoid(get(win_findbuf(b.bufnr), 0))}}})
    call add(blist, {'name': name, 'map': {'<CR>': {k -> b.bufnr}}})
  endfor
  return blist
endfunction

nmap <leader>qq :call lib#menu#menu(Bufslist())<CR>
