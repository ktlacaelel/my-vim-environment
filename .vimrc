
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

" Ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" Pathogen
execute pathogen#infect()

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype off

Bundle 'jshint.vim'
Bundle 'node.js'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-afterimage'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-flatfoot'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-liquid'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-vividchalk'
Bundle 'samsonw/vim-task'
Bundle 'junegunn/seoul256.vim'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'vim-scripts/desert256.vim'

syn on
filetype on
filetype plugin indent on
" colors desert
colors desert256
compiler ruby
set t_Co=256


" * Funny stuff
" :h 42
" :h holy-grail
" :help!
" :help mapmode-nvo    (comment about :nunmap)
" :help UserGettingBored
" "setlocal spell spelllang=en_us

