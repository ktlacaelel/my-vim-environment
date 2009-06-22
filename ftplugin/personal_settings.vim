" set lines=35 columns=147
"set backspace=indent,eol,start
set ff=unix fenc=utf-8 enc=utf-8
set expandtab tabstop=4 shiftwidth=4 softtabstop=4 textwidth=70
set foldmarker={{{,}}} foldmethod=marker incsearch hls
set autoindent nobackup history=200 ruler showcmd
set shiftwidth=2
set tabstop=2
set expandtab
set tabpagemax=1000
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,iso-2022-jp,euc-jp,cp932
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P           
set laststatus=2
" * turns spelling feature on!
" setlocal spell spelllang=en_us
set clipboard=unnamed
