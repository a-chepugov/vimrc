let lib#sessions#DEFAULT_SESSIONS_DIR = $HOME . "/.cache/vim/sessions/"

function! lib#sessions#create_dir(dirname)
  if (filewritable(a:dirname) == 0)
    call mkdir(a:dirname, 'p')
  endif
endfunction

function! lib#sessions#save(filename)
  let l:dirname = fnamemodify(a:filename, ':p:h')
  if (filereadable(l:dirname) != 2)
    call lib#sessions#create_dir(l:dirname) 
  endif
  let l:ssop = &g:sessionoptions
  set ssop-=options
  execute ":mksession! " . a:filename
  execute "set sessionoptions=" . l:ssop
endfunction

function! lib#sessions#load(filename)
  if (filereadable(a:filename) == 1)
    execute ":source " . a:filename
  else
    echomsg "Session file loading error"
  endif
endfunction

