source ~/.vim/ftplugin/personal_settings.vim
source ~/.vim/ftplugin/eatchar.vim
source ~/.vim/ftplugin/personal_abbreviations.vim
source ~/.vim/ftplugin/visual_html_tag_wrap.vim
source ~/.vim/whitespace_hihglighter.vim
source ~/.vim/ftplugin/whitespace_highlight.vim
source ~/.vim/ftplugin/auto_tabularize.vim
source ~/.vim/ftplugin/remember_last_position.vim
source ~/.vim/ftplugin/omni_completions.vim
source ~/.vim/ftplugin/ri.vim
source ~/.vim/ftplugin/php_docblocks.vim
source $VIMRUNTIME/macros/matchit.vim
source ~/.vim/ftplugin/camelization.vim
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$',
  \ 'link': 'bad_symbolic_link',
  \ }

execute pathogen#infect()

" "set rtp+=~/.vim/bundle/vundle/
" "call vundle#rc()
" "filetype off


" "Bundle 'gmarik/vundle'

" " My Bundles here:
" "
" " original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" " vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" Bundle 'rails.vim'
" " non github repos
" Bundle 'git://git.wincent.com/command-t.git'


syn on
filetype on
filetype plugin indent on
colors desert
compiler ruby

set syntax=chords

" * Funny stuff
" :h 42
" :h holy-grail
" :help!
" :help mapmode-nvo    (comment about :nunmap)
" :help UserGettingBored
" "setlocal spell spelllang=en_us

