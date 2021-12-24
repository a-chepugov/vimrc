"" buffers

nmap <nowait> <leader>bl :buffers<CR>
nmap <nowait> <leader>bb :buffers<CR>:buffer
nmap <nowait> <leader>, :bprevious<CR>
nmap <nowait> <leader>. :bnext<CR>
nmap <nowait> <leader>bo :%bdelete\|edit#\|bdelete#<CR>
nmap <nowait> <leader>bd :bdelete<CR>
nmap <nowait> <leader>qw :bdelete<CR>

map <leader>gf  :edit <C-R>=expand('%:h') . '/'<CR><C-R><C-F>
map <leader>gfs :split <C-R>=expand('%:h') . '/'<CR><C-R><C-F>
map <leader>gfv :vsplit <C-R>=expand('%:h') . '/'<CR><C-R><C-F>
map <leader>gft :tabedit <C-R>=expand('%:h') . '/'<CR><C-R><C-F>

"" windows
nmap <nowait> <leader>qq :quit<CR>
nmap <nowait> <leader>o :only<CR>
nmap <nowait> <leader>h :wincmd h<CR>
nmap <nowait> <leader>j :wincmd j<CR>
nmap <nowait> <leader>k :wincmd k<CR>
nmap <nowait> <leader>l :wincmd l<CR>

nmap <nowait> <leader>H :wincmd H<CR>
nmap <nowait> <leader>J :wincmd J<CR>
nmap <nowait> <leader>K :wincmd K<CR>
nmap <nowait> <leader>L :wincmd L<CR>

nmap <leader>== :wincmd =<CR>
nmap <leader>= :wincmd +<CR>
nmap <leader>- :wincmd -<CR>
nmap <leader>] :wincmd ><CR>
nmap <leader>[ :wincmd <<CR>

nmap <leader>wb :set scrollbind!<CR>
nmap <leader>wt <C-W>T

"" tabs
nmap <leader>tt :tabnew<CR>
nmap <leader>tn :tabnew<CR>
nmap <leader>tq :tabclose<CR>

nmap <nowait> <C-Tab> :tabnext<CR>
imap <nowait> <C-Tab> <C-o>:tabnext<CR>
nmap <nowait> <C-S-Tab> :tabprev<CR>
imap <nowait> <C-S-Tab> <C-o>:tabprev<CR>
nmap <nowait> <C-F10> :tab ball<CR>
imap <nowait> <C-F10> <C-o>:tab ball<CR>

nmap <nowait> <leader>1 :tabnext 1<CR>
nmap <nowait> <leader>2 :tabnext 2<CR>
nmap <nowait> <leader>3 :tabnext 3<CR>
nmap <nowait> <leader>4 :tabnext 4<CR>
nmap <nowait> <leader>5 :tabnext 5<CR>
nmap <nowait> <leader>6 :tabnext 6<CR>
nmap <nowait> <leader>7 :tabnext 7<CR>
nmap <nowait> <leader>8 :tabnext 8<CR>
nmap <nowait> <leader>9 :tabnext 9<CR>
nmap <nowait> <leader>0 :tabnext $<CR>

nmap <nowait> <leader>( :tabmove -<CR>
nmap <nowait> <leader>) :tabmove +<CR>
nmap <nowait> <C-S-PageUp> :tabmove -<CR>
nmap <nowait> <C-S-PageDown> :tabmove +<CR>

"" behavior normalize
nnoremap <nowait> <BS> X
imap <nowait> <S-Tab> <C-o><<

nmap <S-Insert> :put +<CR>
vmap <S-Insert> "+p
imap <S-Insert> <C-R>+
cmap <S-Insert> <C-R>+
nmap <C-Insert> :yank +<CR>
vmap <C-Insert> "+y
imap <C-Insert> <C-o>"+yy
cmap <C-Insert> <C-o>"+yy
nmap <S-Del> :delete +<CR>
vmap <S-Del> "+d
imap <S-Del> <C-o>"+dd
cmap <S-Del> <C-o>"+dd

"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>

noremap <C-S-Up> v:m '>-2<CR><ESC>
noremap <C-S-Down> v:m '>+1<CR><ESC>
noremap <C-S-Left> vB
noremap <C-S-Right> vE

map <leader><C-Up> :copen 25<CR>
map <leader><C-Down> :cclose<CR>
map <leader><C-Left> :cprev<CR>
map <leader><C-Right> :cnext<CR>

nmap n nzz
nmap N Nzz
map <C-LeftMouse> <LeftMouse>gf


map <leader>sr :source $MYVIMRC<CR>
map <leader>so :tabnew $MYVIMRC<CR>
map <leader>sc :source %<CR>

map <leader>n :set number relativenumber!<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! <SID>vimgrep_search(options = {})
  let l:options = a:options ?? {}
  let l:pattern = has_key(l:options, 'pattern') ? l:options.pattern : ""
  let l:pattern = input("Enter search pattern: ", l:pattern)
  let l:path = has_key(l:options, 'path') ? l:options.path : "**/*"
  let l:path = input("Enter search path: ", l:path)
  
  let l:open = has_key(l:options, 'open') ? l:options.open : 0

  if l:open > 0
    execute "vimgrep /" . l:pattern . "/" . " " . l:path
    execute "copen 25"
  else
    execute "vimgrep /" . l:pattern . "/" . " " . l:path
  endif
endfunction

nmap <leader>/  :call <SID>vimgrep_search()<CR>
nmap <leader>/w :call <SID>vimgrep_search({ 'pattern': expand("<cword>") })<CR>
nmap <leader>// :call <SID>vimgrep_search({ 'open': 1 })<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"" pwd
nmap <leader>pp :execute "cd " expand("%:p:h")<CR>:pwd<CR>
nmap <leader>ppl :execute "lcd " expand("%:p:h")<CR>:pwd<CR>
nmap <leader>ppt :execute "tcd " expand("%:p:h")<CR>:pwd<CR>

"" completion
imap <leader><Tab> <C-x><C-o>
imap <leader><Tab><Tab> <C-n>
"set omnifunc=syntaxcomplete#Complete

"" show hidden symbols
nmap <leader>sh :set list!<CR>
set listchars=tab:<->,eol:$,space:.,extends:>,precedes:<,conceal:#,nbsp:_

nmap <leader>sw :set wrap!<CR>

"" diff
nmap <leader>dds :diffthis<CR>:wincmd w<CR>:diffthis<CR> " windows diff start
nmap <leader>ddf :diffoff<CR>:wincmd w<CR>:diffoff<CR>   " windows diff stop

"" scroll bind
nmap <leader>sbs :set scrollbind<CR>:set scrollfocus<CR>:wincmd w<CR>:set scrollbind<CR>:set scrollfocus<CR>
nmap <leader>sbss gg:set scrollbind<CR>:set scrollfocus<CR>:wincmd w<CR>gg:set scrollbind<CR>:set scrollfocus<CR>
nmap <leader>sbf :set noscrollbind<CR>:set noscrollfocus<CR>:wincmd w<CR>:set noscrollbind<CR>:set noscrollfocus<CR>

map <F2> :write<CR>
imap <F2> <C-o>:write<CR>
map <F3> :edit .<CR>
imap <F3> <C-o>:edit .<CR>
map <F4> :bdelete<CR>
imap <F4> <C-o>:bdelete<CR>

map <F9> :make<CR>
imap <F9> <C-o>:make<CR>
map <F9>- :make build<CR>
imap <F9>- <C-o>:make build<CR>
map <F9>= :make run<CR>
imap <F9>= <C-o>:make run<CR>
map <leader><F9> :make <C-R><C-W>
imap <leader><F9> <C-o>:make <C-R><C-W>
map <leader><F9><F9> :make <C-R><C-W><CR>
imap <leader><F9><F9> <C-o>:make <C-R><C-W><CR>

map <F5> :buffers<CR>
imap <F5> <C-o>:buffers<CR>
map <F6> :marks<CR>
imap <F6> <C-o>:marks<CR>
map <F7> :registers<CR>
imap <F7> <C-o>:registers<CR>
map <F8> <C-o>:emenu <Tab>
imap <F8> <C-o>:emenu <Tab>
