source $HOME/.vim/init/lib/index.vim

nmap <leader>es :call lib#trim#trailing_whitespaces()<CR>

nmap <silent> <leader>re 
	\:echo "Enter registry name"<CR>
	\:call lib#register#edit(getcharstr())<CR>

nmap <leader><F1> :call lib#sessions#load(input("Load session from: ", lib#sessions#DEFAULT_SESSIONS_DIR, "file"))<CR>
nmap <leader><C-F1> :call lib#sessions#save(input("Save session into: ", lib#sessions#DEFAULT_SESSIONS_DIR . lib#path#cwd_name(), "file"))<CR>
nmap <leader><C-F1><C-F1> :call lib#sessions#save_last()<CR>:echo "current session saved"<CR>

