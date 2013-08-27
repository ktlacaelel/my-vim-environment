" NOTE: You must have lithium in your path.
"
" Install:
"
" Ask kazu:
"   ;0)
"

" Location of lithium utility, change in vimrc i different
if !exists("g:lithiumprg")
  let g:lithiumprg="lithium"
endif

function! s:Lithium(cmd, args)
  redraw
  " If no file is provided, use current file
  if empty(a:args)
    let l:fileargs = expand("%")
  else
    let l:fileargs = a:args
  end

  let grepprg_bak=&grepprg
  let grepformat_bak=&grepformat
  try
    let &grepprg=g:lithiumprg
    let &grepformat="%f: line %l\\,\ col %c\\, %m,%-G,%-G%s error,%-G%s errors"
    let cmdline = [a:cmd]
    if exists("g:lithiumconfig")
      call add(cmdline, '--config')
      call add(cmdline, g:lithiumconfig)
    end
    call add(cmdline, l:fileargs)
    silent execute join(cmdline)
  finally
    let &grepprg=grepprg_bak
    let &grepformat=grepformat_bak
  endtry

  if len(getqflist()) > 0

    " search what you are searching within editor automatically.
    " \"execute \"/" . l:fileargs

    " has errors display quickfix win
    botright copen

    " close quickfix
    exec "nnoremap <silent> <buffer> q :ccl<CR>"

    " open in a new window
    exec "nnoremap <silent> <buffer> o <C-W><CR>"

    " preview
    exec "nnoremap <silent> <buffer> p <CR>:cope<CR>j"

    redraw!
  else

    " no error, sweet!
    cclose
    redraw!
    echo "Lithium done."

  end
endfunction

command! -bang -nargs=* -complete=file Lithium call s:Lithium('grep<bang>',<q-args>)
