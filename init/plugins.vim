"" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

"" Метки в файлах
Plug 'kshenoy/vim-signature'

"" Работа буферами
Plug 'jeetsukumaran/vim-buffergator'

"" Метки git
Plug 'airblade/vim-gitgutter'

"" Работа с проектом
Plug 'tpope/vim-projectionist'
"Plug 'ctrlpvim/ctrlp.vim'

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


call plug#end()

"autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

"" mappings
map <F2>  :write<CR>
map <F10> :BuffergatorToggle<CR>
map <F11> :<C-U>call signature#mark#Toggle("next")<CR>
map <C-F11> :SignatureToggleSigns<CR>
map <S-F11> :marks<CR>
map <F12> :Lexplore<CR>
noremap <S-F12> :Lexplore %:p:h<CR>

map <Del>map <A-F9> :below terminal<CR>
map <A-F12> :below terminal<CR>


nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

