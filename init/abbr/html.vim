:autocmd FileType html,mason
	\ :iabbrev <buffer> qq <H1>DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>>',z</H1><C-O>Tz<C-O>"_X

