"" vim-plug
"if empty(glob('~/.vim/autoload/plug.vim'))
"	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"endif

call plug#begin('~/.vim/plugged')

"" editor
Plug 'editorconfig/editorconfig-vim'

"" Работа буферами
Plug 'jeetsukumaran/vim-buffergator'

"" Статус линия
Plug 'vim-airline/vim-airline'

"" Метки git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"" Нечеткий поиск
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'ddrscott/vim-side-search'

"" Langs
Plug 'dense-analysis/ale'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'

"Plug 'eslint/eslint'
"Plug 'nginx/nginx'
Plug 'hiphish/info.vim'


" Snippets
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

call plug#end()
"autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

""" ale
let g:ale_fixers = {
\  'javascript': ['prettier', 'eslint'],
\  'typescript': ['prettier', 'eslint']
\}
let g:ale_linters = {
\  'javascript': ['eslint']
\}

let g:ale_completion_enabled = 1
"let g:ale_completion_autoimport = 0
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_warn_about_trailing_whitespace = 1

nmap <silent> <leader>aa <Plug>(ale_toggle)
nmap <silent> <leader>al <Plug>(ale_lint)
nmap <silent> <leader>a[ <Plug>(ale_previous_wrap)
nmap <silent> <leader>a] <Plug>(ale_next_wrap)
nmap <silent> <leader>af <Plug>(ale_fix)
nmap <silent> <leader>ah <Plug>(ale_hover)
nmap <silent> <leader>ahh <Plug>(ale_documentation)
nmap <silent> <leader>ad <Plug>(ale_go_to_definition)
nmap <silent> <leader>add <Plug>(ale_go_to_type_definition)
nmap <silent> <leader>ai <Plug>(ale_go_to_implementation)
nmap <silent> <leader>ar <Plug>(ale_find_references)
imap <silent> <leader>ac <Plug>(ale_complete)

noremap <C-Space> <Plug>(ale_complete)
imap <C-Space> <Plug>(ale_complete)

let g:coc_global_extensions = ['coc-tsserver']
let g:coc_node_path = '/usr/bin/node'  " Путь к вашей установленной версии Node.js
"let g:coc_server_command = ['/usr/bin/typescript-language-server', '--stdio']
let g:coc_server_command = ['tsserver-langserver', '--stdio']
"
"
""inoremap <silent><expr> <TAB>
""      \ pumvisible() ? "\<C-n>" :
""      \ <SID>check_back_space() ? "\<TAB>" :
""      \ coc#refresh()
"
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> <leader>cd <Plug>(coc-definition)
nmap <silent> <leader>cdt <Plug>(coc-type-definition)
nmap <silent> <leader>ci <Plug>(coc-implementation)
nmap <silent> <leader>cr <Plug>(coc-references)

nmap <silent> <leader>c[ <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>c] <Plug>(coc-diagnostic-next)


""" fzf
nmap <leader>fc :Commits<CR>
nmap <leader>fcc :BCommits<CR>
nmap <leader>fg :GFiles<CR>
nmap <leader>ff :Files<CR>
nmap <leader>fr :Rg<CR>
nmap <leader>fb :Buffers<CR>
nmap <leader>fh :History<CR>
nmap <leader>fm :Maps<CR>
nmap <leader>fw :Windows<CR>
nmap <leader>ft :Filetypes<CR>
nmap <leader>fs :Snippets<CR>

""" Buffergator
map <leader><F5> :BuffergatorToggle<CR>


""" terminal
nmap <F11> :below terminal<CR>
nmap <S-F11> :lcd %:p:h<CR>:below terminal<CR>

nmap <C-F11> :!x-terminal-emulator<CR>
nmap <C-S-F11> :lcd %:p:h<CR>:!x-terminal-emulator<CR>


""" netwr
let g:netrw_banner    = 0
let g:netrw_preview   = 1
let g:netrw_liststyle = 0
let g:netrw_winsize   = 30

noremap <F12> :Lexplore<CR>
noremap <S-F12> :Lexplore %:p:h<CR>

