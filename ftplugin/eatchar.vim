" * removes the extra space at the end of the line on abreviations!
func Eatchar(pat)
    let c = nr2char(getchar())
    return (c =~ a:pat) ? '' : c
endfunc
