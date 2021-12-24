runtime ./path.vim

let lib#sessions#DEFAULT_SESSIONS_DIR = $HOME . "/.cache/vim/sessions/"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! <SID>save(filename)
  let l:dirname = fnamemodify(a:filename, ':p:h')
  if (filereadable(l:dirname) != 2)
    call lib#path#create_dir(l:dirname)
  endif
  let l:ssop = &g:sessionoptions
  set ssop-=options
  execute ":mksession! " . a:filename
  execute "set sessionoptions=" . l:ssop
endfunction

function! <SID>load(filename)
  if (filereadable(a:filename) == 1)
    execute ":source " . a:filename
  else
    echomsg "Session file loading error"
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! lib#sessions#save(filename)
  call lib#sessions#set_filename(a:filename)
  call <SID>save(a:filename)
endfunction

function! lib#sessions#load(filename)
  call lib#sessions#set_filename(a:filename)
  call <SID>load(a:filename)
endfunction

function! lib#sessions#get_filename()
  if exists('g:lib#sessions#LAST_SESSION_FILENAME')
    return get(g:, 'lib#sessions#LAST_SESSION_FILENAME', '')
  else
    return ''
  endif
endfunction

function! lib#sessions#set_filename(filename)
  let g:lib#sessions#LAST_SESSION_FILENAME = a:filename
endfunction

