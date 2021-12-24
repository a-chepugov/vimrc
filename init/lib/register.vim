function! s:reload2buffer(register_name)
  let l = line(".")
  let c = col(".")

  call deletebufline(bufname(), 1, '$')
  let l:result = append(0, split(getreg(a:register_name), "\n"))

  call cursor(l, c)
  return l:result
endfunction

function! s:from_buffer(register_name)
  return setreg(a:register_name, join(getline(1, '$'), "\n"))
endfunction	

function! lib#register#edit(register_name)
  :tabnew
  let b:register_name = a:register_name
  call s:reload2buffer(b:register_name)
  autocmd TextChanged <buffer> call s:from_buffer(b:register_name)
  autocmd TextChangedI <buffer> call s:from_buffer(b:register_name)
  autocmd TextChangedP <buffer> call s:from_buffer(b:register_name)
  autocmd BufEnter <buffer> call s:reload2buffer(b:register_name) 
endfunction

