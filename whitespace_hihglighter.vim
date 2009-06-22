function! ShowWhitespace()
    " show tabs and whitespace at eol
    let b:showWS = 1
    syntax match Tabs "\t" containedin=ALL
    syntax match LineEndWS "\s\+$" containedin=ALL
    echo "show Whitespace"
endfunction

function! HideWhitespace()
    " hide tabs and whitespace at eol
    let b:showWS = 0
    syntax clear Tabs
    syntax clear LineEndWS
    echo "hide Whitespace"
endfunction

function! ToggleShowWhitespace()
    if !exists('b:showWS')
        let b:showWS = 0
    endif

    " toggle variable
    let b:showWS = !b:showWS

    if b:showWS == 1
        call ShowWhitespace()
    else
        call HideWhitespace()
    endif
endfunction

" ------------------------------------------------
" You will also need some highlighting:

highlight Tabs term=standout cterm=standout gui=standout
highlight link LineEndWS Error

" And some mappings (or autocommands):
nmap <Leader>ws :call ToggleShowWhitespace()<CR>
if has("autocmd")
    au VimEnter,BufRead  *   silent call ShowWhitespace()
endif
