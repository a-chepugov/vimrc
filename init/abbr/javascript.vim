:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qcl 
	\console.log(Z);<C-O>TZ<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qci 
	\console.info(Z);<C-O>TZ<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qce 
	\console.error(Z);<C-O>TZ<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qcd 
	\console.dir(Z, { color: true, showHidden: false, depth: null });<C-O>TZ<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qct 
	\console.table(Z);<C-O>TZ<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qcti 
	\console.time(Z);<C-O>TZ<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qctie 
	\console.timeEnt(Z);<C-O>TZ<C-O>"_X

" ---------- 

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qq 
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>>`,Z);<C-O>TZ<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qqq 
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===>`,Z);<C-O>TZ<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qqqq 
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>=========>`,Z);<C-O>TZ<C-O>"_X

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qqqqq 
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===========================>`,Z);<C-O>TZ<C-O>"_X

" ---------- 

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qqs 
	\console.log(JSON.stringify(Z));<C-O>TZ<C-O>"_X

" ---------- 

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qqcd 
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>=========>`);<CR>
	\console.dir(Z, { color: true, showHidden: false, depth: null });<CR>
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>=========>`);
	\<C-O>k<C-O>TZ<C-O>"_X

" ---------- 

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qqcda 
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>=========>`);<CR>
	\console.dir(arguments, { color: true, showHidden: false, depth: null });<CR>
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>=========>`);<CR>

" ---------- 

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qtry 
	\<C-O>Otry {<C-O>j<C-O>$<CR>
	\} catch (error) {<CR>
	\console.warn(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===========================>`);<CR>
	\console.error(error);<CR>
	\console.warn(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===========================>`);<CR>
	\throw error;<CR>
	\}<CR>

:autocmd FileType javascript,typescript
	\ :iabbrev <buffer> qtc 
	\<CR>
	\	.then((result) => {<CR>
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===========================>`);<CR>
	\console.dir(result, { color: true, showHidden: false, depth: null });<CR>
	\console.log(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===========================>`);<CR>
	\return result;<CR>
	\})<CR>
	\	.catch((error) => {<CR>
	\console.warn(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===========================>`);<CR>
	\console.error(error);<CR>
	\console.warn(`DBG:<C-R>=expand('%:t')<CR>:<C-R>=line('.')<CR>===========================>`);<CR>
	\throw error;<CR>
	\})<CR>

