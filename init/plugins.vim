"" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

"" Метки в файлах
Plug 'kshenoy/vim-signature'
"" editor
Plug 'editorconfig/editorconfig-vim'

"" Работа буферами
Plug 'jeetsukumaran/vim-buffergator'

"" Метки git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"" Работа с проектом
Plug 'ctrlpvim/ctrlp.vim'

"" Нечеткий поиск
Plug 'ddrscott/vim-side-search'

"" Статус линия
Plug 'vim-airline/vim-airline'

"" Langs
Plug 'w0rp/ale'

"" Plug 'pangloss/vim-javascript'
"" Plug 'rust-lang/rust.vim'

"" Python
"" Plug 'jupyter-vim/jupyter-vim'

"" Nginx
Plug 'nginx/nginx'

" Colorscheme
Plug 'tomasr/molokai'

call plug#end()

colorscheme molokai
"autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

"" mappings
map <F10> :BuffergatorToggle<CR>
map <F11> :call signature#mark#Toggle("next")<CR>
map <S-F11> :SignatureToggleSigns<CR>
map <F12> :Lexplore<CR>
noremap <S-F12> :Lexplore %:p:h<CR>
map <S-M-F12> :lcd %:p:h<CR> :below terminal<CR>
map <M-F12> :below terminal<CR>

"let g:netrw_liststyle=3

noremap <silent> <leader> :WhichKey '<Space>'<CR>

