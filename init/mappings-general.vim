"" buffers
nmap <nowait> <leader>b :buffers<CR>
nmap <nowait> <leader>bb :buffers<CR>:buffer 
nmap <nowait> <A-,> :bprevious<CR>
nmap <nowait> <A-.> :bnext<CR>
nmap <nowait> <S-A-q> :bdelete<CR>
imap <nowait> <A-,> <C-o>:bprevious<CR>
imap <nowait> <A-.> <C-o>:bnext<CR>
imap <nowait> <S-A-q> <C-o>:bdelete<CR>

"" windows
nmap <nowait> <A-q> :close<CR>
imap <nowait> <A-q> <C-o>:close<CR>
nmap <nowait> <A-o> :only<CR>
nmap <nowait> <A-h> :wincmd h<CR>
nmap <nowait> <A-j> :wincmd j<CR>
nmap <nowait> <A-k> :wincmd k<CR>
nmap <nowait> <A-l> :wincmd l<CR>

nmap <nowait> <A-H> :wincmd H<CR>
nmap <nowait> <A-J> :wincmd J<CR>
nmap <nowait> <A-K> :wincmd K<CR>
nmap <nowait> <A-L> :wincmd L<CR>

nmap <nowait> <A--> :wincmd -<CR>
nmap <nowait> <A-=> :wincmd +<CR>
nmap <nowait> <A-<> :wincmd <<CR>
nmap <nowait> <A->> :wincmd ><CR>

"" tabs
nmap <nowait> <leader>t :tabnew<CR>
nmap <nowait> <leader>tq :tabclose<CR>
nmap <nowait> <C-Tab> :tabnext<CR>
nmap <nowait> <C-S-Tab> :tabprev<CR>
nmap <nowait> <C-F10> :tab ball<CR>
imap <nowait> <C-Tab> <C-o>:tabnext<CR>
imap <nowait> <C-S-Tab> <C-o>:tabprev<CR>
imap <nowait> <C-F10> <C-o>:tab ball<CR>

nmap <nowait> <A-1> :1tabnext<CR>
nmap <nowait> <A-2> :2tabnext<CR>
nmap <nowait> <A-3> :3tabnext<CR>
nmap <nowait> <A-4> :4tabnext<CR>
nmap <nowait> <A-5> :5tabnext<CR>
nmap <nowait> <A-6> :6tabnext<CR>
nmap <nowait> <A-7> :7tabnext<CR>
nmap <nowait> <A-8> :8tabnext<CR>
nmap <nowait> <A-9> :9tabnext<CR>

nmap <nowait> <A-[> :tabmove -<CR>
nmap <nowait> <A-]> :tabmove +<CR>



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

nmap <A-Left> :cprev<CR>
nmap <A-Right> :cnext<CR>

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

map <leader>vr :source $MYVIMRC<CR>
map <leader>vo :tabnew $MYVIMRC<CR>
map <leader>n :set number relativenumber!<CR>

"" completion
imap <leader>q <C-n>
imap <leader>c <C-x><C-o>
set omnifunc=syntaxcomplete#Complete

"" show hidden symbols
nmap <leader>sh :set list!<CR>
set listchars=tab:<->,eol:$,space:.,extends:>,precedes:<,conceal:#,nbsp:_

