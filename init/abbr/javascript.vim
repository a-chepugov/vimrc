:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qq console.log('DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>>',z);<C-O>Tz<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qqq console.log('DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>=========>',z);<C-O>Tz<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qqa console.dir(arguments, { depth: null, color: true });

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qcl console.log(z);<C-O>Tz<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qcd console.dir(z, { depth: null, color: true });<C-O>Tz<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qci console.info();<Left><Left>

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qce console.error

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qcee console.error(error);

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qct console.table(z);<C-O>Tz<C-O>"_X


