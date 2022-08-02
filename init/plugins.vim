"" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

"" editor
Plug 'editorconfig/editorconfig-vim'

"" Работа буферами
Plug 'jeetsukumaran/vim-buffergator'

"" Метки git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"" Нечеткий поиск
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'ddrscott/vim-side-search'

"" Статус линия
Plug 'vim-airline/vim-airline'

"" Langs
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'w0rp/ale'

Plug 'eslint/eslint'
Plug 'nginx/nginx'

" Snippets
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

call plug#end()

"autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

" remove netwr header
let g:netrw_banner=0


"" mappings
nmap <leader>fb :Buffers<CR>
nmap <leader>fc :Commits<CR>
nmap <leader>fcc :BCommits<CR>
nmap <leader>ff :Files<CR>
nmap <leader>fh :History<CR>
nmap <leader>fg :GFiles<CR>
nmap <leader>fm :Maps<CR>
nmap <leader>fs :Snippets<CR>
nmap <leader>ft :Filetypes<CR>
nmap <leader>fw :Windows<CR>

map <S-F10> :BuffergatorToggle<CR>
map <F12> :Lexplore<CR>
noremap <S-F12> :Lexplore %:p:h<CR>
map <S-M-F12> :lcd %:p:h<CR>:below terminal<CR>
map <M-F12> :below terminal<CR>

