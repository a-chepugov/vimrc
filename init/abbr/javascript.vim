:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qq console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>>`,z);<C-O>Tz<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qqq console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>====>`,z);<C-O>Tz<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qqqq console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===============>`,z);<C-O>Tz<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qcl console.log(z);<C-O>Tz<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qci console.info();<Left><Left>

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qce console.error

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qcee console.error(error);

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qcd console.dir(z, { color: true, showHidden: false, depth: null });<C-O>Tz<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qqc 
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===============>`);<CR>
	\console.dir(z, { color: true, showHidden: false, depth: null });<CR>
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===============>`);
	\<C-O>k<C-O>Tz<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qcda console.dir(arguments, { color: true, showHidden: false, depth: null });

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qct console.table(z);<C-O>Tz<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qtry 
	\<C-O>Otry {<C-O>j<C-O>$<CR>
	\} catch (error) {<CR>
	\console.warn(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===============>`);<CR>
	\console.error(error)<CR>
	\console.warn(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===============>`);<CR>
	\}<CR>

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qtc 
	\<CR>
	\	.then((result) => {<CR>
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===============>`);<CR>
	\console.dir(result, { color: true, showHidden: false, depth: null });<CR>
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===============>`);<CR>
	\return result;<CR>
	\})<CR>
	\	.catch((error) => {<CR>
	\console.warn(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===============>`);<CR>
	\console.error(error);<CR>
	\console.warn(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===============>`);<CR>
	\throw error;<CR>
	\})<CR>

