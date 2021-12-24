source $HOME/.vim/init/lib/cursor.vim

function! lib#trim#trailing_whitespaces()
  " let l:last = line('$')
  " let l:c = 1
  " while l:c <= l:last
  "   call setline(l:c, substitute(getline(l:c), "\\s\\+$", "", "g"))
  "   let l:c += 1
  " endwhile
endfunction

