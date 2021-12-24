function! lib#cursor#preserve()
  return {'line': line('.'), 'col': col('.')}
endfunction

function! lib#cursor#restore(c)
  call cursor(a:c.line, a:c.col)
endfunction
