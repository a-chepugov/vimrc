"" buffers
nmap <nowait> <A-[> :bprevious<CR>
nmap <nowait> <A-]> :bnext<CR>
nmap <nowait> <A-q> :bdelete<CR>


"" tabs
nmap <nowait> <C-Tab> :tabn<CR>
nmap <nowait> <C-S-Tab> :tabp<CR>
nmap <nowait> <S-F10> :tab ball<CR>

map <nowait> <A-1> :1tabnext<CR>
map <nowait> <A-2> :2tabnext<CR>
map <nowait> <A-3> :3tabnext<CR>
map <nowait> <A-4> :4tabnext<CR>
map <nowait> <A-5> :5tabnext<CR>
map <nowait> <A-6> :6tabnext<CR>
map <nowait> <A-7> :7tabnext<CR>
map <nowait> <A-8> :8tabnext<CR>
map <nowait> <A-9> :9tabnext<CR>

"" windows
map <nowait> <A-0> :only<CR>
map <nowait> <A-h> :wincmd h<CR>
map <nowait> <A-j> :wincmd j<CR>
map <nowait> <A-k> :wincmd k<CR>
map <nowait> <A-l> :wincmd l<CR>

map <nowait> <A-H> :wincmd H<CR>
map <nowait> <A-J> :wincmd J<CR>
map <nowait> <A-K> :wincmd K<CR>
map <nowait> <A-L> :wincmd L<CR>

map <nowait> <A--> :wincmd -<CR>
map <nowait> <A-=> :wincmd +<CR>
map <nowait> <A-<> :wincmd <<CR>
map <nowait> <A->> :wincmd ><CR>

"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>

map <A-Left> :cprev<CR>
map <A-Right> :cnext<CR>

"" behevior normalize
nnoremap <BS> i<BS><ESC>`^
nnoremap <Del> i<Del><ESC>`^
imap <S-Tab> <C-d>

nnoremap <C-c> <Esc>
map <C-LeftMouse> <LeftMouse>gf

map <S-F1> :vimgrep 

"" completion
imap <C-Space> <C-n>

