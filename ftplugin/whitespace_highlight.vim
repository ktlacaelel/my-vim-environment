
" whitespace highlight
let c_space_errors = 1
set bg=light
set listchars=trail:%
set list

" remove whitespace when saving
autocmd BufWritePre * :%s/\s\+$//e

