
" * This function maps ',w' and prompts you for input
" * when you do this in visual mode selecting something 
" * vim will create a starting and closing html tag
" * on whatever you selected! sweet!
vmap ,w <ESC>:call VisualHTMLTagWrap()<CR>
function! VisualHTMLTagWrap()
  " let a:tag = toupper( input( 'Tag to wrap block: ') )
  let a:tag = input( "Tag to wrap block: ")
  let a:jumpright = 2 + len( a:tag )
  normal `<
  let a:init_line = line( "." )
  exe "normal i<".a:tag.">"
  normal `>
  let a:end_line = line( "." )
  " Don't jump if we're on a new line
  if( a:init_line == a:end_line )
    " Jump right to compensate for the characters we've added
    exe "normal ".a:jumpright."l"
  endif
  exe "normal a</".a:tag.">"
endfunction
