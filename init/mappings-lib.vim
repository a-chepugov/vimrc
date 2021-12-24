source $HOME/.vim/init/lib/index.vim

let g:mappings_commands = {}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <leader>es :call lib#trim#trailing_whitespaces()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! mappings_commands.cmd_out()
  let l:command = input("Input command: ")
  call lib#run#cmd(l:command)
endfunction

nmap <leader><CR> :call mappings_commands.cmd_out()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! mappings_commands.register_edit()
  echomsg "Enter registry symbol "
  let l:symbol = getcharstr()
  call lib#register#edit(l:symbol)
endfunction

nmap <leader>re :call mappings_commands.register_edit()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! mappings_commands.session_load()
  let l:dir = get(g:, 'lib#sessions#DEFAULT_SESSIONS_DIR', '')
  let l:filename = input("Load session from: ", l:dir, "file")
  call lib#sessions#load(l:filename)
  echo "\n"
  echomsg "Session loaded from: " . l:filename
endfunction

function! mappings_commands.session_save()
  let l:filename = lib#sessions#get_filename()
  if !strlen(l:filename)
    let l:dir = get(g:, 'lib#sessions#DEFAULT_SESSIONS_DIR', '')
    let l:filename = input("Save session into: ", l:dir . lib#path#cwd_name(), "file")
  endif
  call lib#sessions#save(l:filename)
  echo "\n"
  echomsg "Session saved into: " . l:filename
endfunction

function! mappings_commands.session_save_as()
  let l:filename = lib#sessions#get_filename()
  if strlen(l:filename)
    let l:filename = input("Save session into: ", l:filename, "file")
  else
    let l:dir = get(g:, 'lib#sessions#DEFAULT_SESSIONS_DIR', '')
    let l:filename = input("Save session into: ", l:dir . lib#path#cwd_name(), "file")
  endif
  call lib#sessions#save(l:filename)
  echo "\n"
  echomsg "Session saved into: " . l:filename
endfunction

nmap <leader><F1> :call mappings_commands.session_load()<CR>
nmap <leader><C-F1><C-F1> :call mappings_commands.session_save()<CR>
nmap <leader><C-F1> :call mappings_commands.session_save_as()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
