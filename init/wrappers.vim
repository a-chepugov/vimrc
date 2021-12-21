"" open help in new tab
augroup HelpInTabs
    autocmd!
    autocmd BufEnter *.txt call HelpInNewTab()
augroup END

function! HelpInNewTab ()
    if &buftype == 'help'
        execute "normal \<C-W>T"
    endif
endfunction

