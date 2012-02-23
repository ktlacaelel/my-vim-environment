" Camelize
function! Camelize(str) "{{{
    return substitute(tolower(a:str), '^[a-z]\|_[a-z]'.'\C', '\= toupper(submatch(0)[0] ==# "_" ? submatch(0)[1:] : submatch(0))', 'g')
endfunction "}}}


" Decamelize
function! Decamelize(str) "{{{
    return substitute(a:str, '^[A-Z]\|[a-z]\zs[A-Z]'.'\C', '\="_" . tolower(submatch(0))', 'g')[1:]
endfunction "}}}
