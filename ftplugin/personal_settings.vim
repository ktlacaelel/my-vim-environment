" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
      \ | wincmd p | diffthis
endif

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
autocmd! BufNewFile * silent! 0r ~/.vim/skel/template.%:e
