:autocmd FileType python
	\ :iabbrev <buffer> qp 
	\print(Z);<C-O>TZ<C-O>"_X

:autocmd FileType python
	\ :iabbrev <buffer> qd 
	\dir(Z);<C-O>TZ<C-O>"_X

:autocmd FileType python
	\ :iabbrev <buffer> qce 
	\console.error(Z);<C-O>TZ<C-O>"_X

" ----------

:autocmd FileType python
	\ :iabbrev <buffer> qq 
	\print('DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>>',Z);<C-O>TZ<C-O>"_X

:autocmd FileType python
	\ :iabbrev <buffer> qqq 
	\print('DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===>',Z);<C-O>TZ<C-O>"_X

:autocmd FileType python
	\ :iabbrev <buffer> qqqq 
	\print('DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>=========>',Z);<C-O>TZ<C-O>"_X

:autocmd FileType python
	\ :iabbrev <buffer> qqqqq 
	\print('DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===========================>',Z);<C-O>TZ<C-O>"_X

" ----------

