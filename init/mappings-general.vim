"" buffers
let mapleader = " "

nmap <nowait> <leader>bl :buffers<CR>
nmap <nowait> <leader>bb :buffers<CR>:buffer 
nmap <nowait> <leader>, :bprevious<CR>
nmap <nowait> <leader>. :bnext<CR>
nmap <nowait> <leader>q :bwipeout<CR>

"" windows
nmap <nowait> <leader>e :close<CR>
nmap <nowait> <leader>o :only<CR>
nmap <nowait> <leader>h :wincmd h<CR>
nmap <nowait> <leader>j :wincmd j<CR>
nmap <nowait> <leader>k :wincmd k<CR>
nmap <nowait> <leader>l :wincmd l<CR>

nmap <nowait> <leader>H :wincmd H<CR>
nmap <nowait> <leader>J :wincmd J<CR>
nmap <nowait> <leader>K :wincmd K<CR>
nmap <nowait> <leader>L :wincmd L<CR>

nmap <nowait> <leader>- :wincmd -<CR>
nmap <nowait> <leader>= :wincmd +<CR>
nmap <nowait> <leader>< :wincmd <<CR>
nmap <nowait> <leader>> :wincmd ><CR>


nmap <leader>wb :set scrollbind!<CR>
nmap <leader>wt <C-W>T


"" tabs
nmap <nowait> <leader>t :tabnew<CR>
nmap <nowait> <leader>tq :tabclose<CR>
nmap <nowait> <C-Tab> :tabnext<CR>
nmap <nowait> <C-S-Tab> :tabprev<CR>
nmap <nowait> <C-F10> :tab ball<CR>
imap <nowait> <C-Tab> <C-o>:tabnext<CR>
imap <nowait> <C-S-Tab> <C-o>:tabprev<CR>
imap <nowait> <C-F10> <C-o>:tab ball<CR>

nmap <nowait> <leader>1 :1tabnext<CR>
nmap <nowait> <leader>2 :2tabnext<CR>
nmap <nowait> <leader>3 :3tabnext<CR>
nmap <nowait> <leader>4 :4tabnext<CR>
nmap <nowait> <leader>5 :5tabnext<CR>
nmap <nowait> <leader>6 :6tabnext<CR>
nmap <nowait> <leader>7 :7tabnext<CR>
nmap <nowait> <leader>8 :8tabnext<CR>
nmap <nowait> <leader>9 :9tabnext<CR>

nmap <nowait> <leader>[ :tabmove -<CR>
nmap <nowait> <leader>] :tabmove +<CR>


"" behavior normalize
nnoremap <nowait> <BS> X
imap <nowait> <S-Tab> <C-d>

nmap <S-Insert> :put +<CR>
vmap <S-Insert> p
imap <S-Insert> <C-R>+
cmap <S-Insert> <C-R>+
nmap <C-Insert> :yank +<CR>
vmap <C-Insert> y
imap <C-Insert> <C-o>yy
cmap <C-Insert> <C-o>yy

"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>
noremap <C-S-Up> ddkP
noremap <C-S-Down> ddp
"noremap <C-S-Left> <NOP>
"noremap <C-S-Right> <NOP>

nmap <leader><Left> :cprev<CR>
nmap <leader><Right> :cnext<CR>

nmap n nzz
nmap N Nzz
map <C-LeftMouse> <LeftMouse>gf

map <S-F1> :vimgrep<F2>
map <F2> :write<CR>
imap <F2> <C-o>:write<CR>
map <C-S-F5> :registers<CR>
map <F9> :emenu <Tab>
nmap <F10> :buffers<CR>
map <C-S-F11> :marks<CR>

map <leader>sr :source $MYVIMRC<CR>
map <leader>so :tabnew $MYVIMRC<CR>
map <leader>sc :source %<CR>

map <leader>n :set number relativenumber!<CR>

"" completion
imap <leader>c <C-n>
imap <leader>v <C-x><C-o>
set omnifunc=syntaxcomplete#Complete

"" show hidden symbols
nmap <leader>sh :set list!<CR>
set listchars=tab:<->,eol:$,space:.,extends:>,precedes:<,conceal:#,nbsp:_

"" diff
nmap <leader>ds :diffthis<CR>:wincmd w<CR>:diffthis<CR>
nmap <leader>df :diffoff<CR>:wincmd w<CR>:diffoff<CR>

"" scroll
nmap <leader>sbs gg:set scrollbind<CR>:set scrollfocus<CR>:wincmd w<CR>gg:set scrollbind<CR>:set scrollfocus<CR>
nmap <leader>sbf :set noscrollbind<CR>:set noscrollfocus<CR>:wincmd w<CR>:set noscrollbind<CR>:set noscrollfocus<CR>

"" lib
source $HOME/.vim/init/lib/index.vim

nmap <leader>es :call lib#trim#trailing_whitespaces()<CR>

nmap <silent> <leader>re 
	\:echo "Enter registry name"<CR>
	\:call lib#register#edit(getcharstr())<CR>

nmap <leader>pp :call lib#path#pwd_from_buffer()<CR>

nmap <silent> <leader>ses :call lib#sessions#save(input("Save session into: ", lib#sessions#DEFAULT_SESSIONS_DIR, "file"))<CR>
nmap <silent> <leader>ser :call lib#sessions#load(input("Load session from: ", lib#sessions#DEFAULT_SESSIONS_DIR, "file"))<CR>
