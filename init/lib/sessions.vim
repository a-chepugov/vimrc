let lib#sessions#DEFAULT_SESSIONS_DIR = $HOME . "/.cache/vim/sessions/"

runtime ./path.vim

function! lib#sessions#save(filename)
  let g:lib#sessions#LAST_FILENAME = a:filename
  call <SID>save(a:filename)
endfunction

function! lib#sessions#save_last()
  if exists('g:lib#sessions#LAST_FILENAME')
    call <SID>save(g:lib#sessions#LAST_FILENAME)
  else
    echo 'lib#sessions#LAST_FILENAME' . ' is empty'
  endif
endfunction

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

function! lib#sessions#load(filename)
  let g:lib#sessions#LAST_FILENAME = a:filename
  call <SID>load(a:filename)
endfunction


function! <SID>load(filename)
  if (filereadable(a:filename) == 1)
    execute ":source " . a:filename
  else
    echomsg "Session file loading error"
  endif
endfunction

function! lib#sessions#get_default(path, filename)
  if (filereadable(a:filename) == 1)
    execute ":source " . a:filename
  else
    echomsg "Session file loading error"
  endif
endfunction
