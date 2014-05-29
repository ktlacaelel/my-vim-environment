
" source ~/dev/git/vim/get_visual.vim
" source ~/dev/git/vim/init.vim
" source ~/dev/git/vim/framework.vim
" source ~/dev/git/vim/string.vim
" source ~/dev/git/vim/string_usage.vim
" source ~/dev/git/vim/present.vim
" source ~/dev/git/vim/search_cword.vim
  
" http://www.cs.swarthmore.edu/help/vim/indenting.html 
set expandtab     " don't use actual tab character (ctrl-v)
set tabstop=4     " tabs are at proper location
set shiftwidth=4  " indenting is 4 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
set cindent       " stricter rules for C programs

filetype indent on
filetype plugin on 

syn on
set textwidth=70
set laststatus=2 statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set autoindent nobackup history=10000 ruler showcmd
set enc=utf-8 fenc=utf-8 fencs=utf-8,iso-2022-jp,euc-jp,cp932
set ff=unix fenc=utf-8 enc=utf-8
set background=dark
set hls
set nocompatible
set incsearch

" Menu coloring.
highlight Pmenu ctermfg=cyan ctermbg=black
highlight PmenuSel ctermfg=black ctermbg=cyan

set grepprg='ag'

" Restore cursor position
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

execute pathogen#infect()

" Custom Snippets
let g:snippets_dir = '/Users/kazu/dev/git/vim-snippets/'
