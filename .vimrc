
source ~/.vim/ftplugin/personal_settings.vim
source ~/.vim/ftplugin/eatchar.vim
source ~/.vim/ftplugin/personal_abbreviations.vim
source ~/.vim/ftplugin/whitespace_hihglighter.vim
source ~/.vim/ftplugin/remember_last_position.vim
source $VIMRUNTIME/macros/matchit.vim
source ~/.vim/ftplugin/camelization.vim

" Custom Snippets
let g:snippets_dir = "/Users/kazu/.vim/bundle/vim-snippets/"

" Ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" Solarized
let g:solarized_termcolors=256

" Pathogen
execute pathogen#infect()

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype off

Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'ktlacaelel/vim-snippets'
Bundle 'samsonw/vim-task'
Bundle 'godlygeek/tabular'
Bundle 'vim-ruby/vim-ruby'
Bundle 'msanders/snipmate.vim'
Bundle 'mileszs/ack.vim'
Bundle 'rainux/vim-desert-warm-256'
Bundle 'desert.vim'
Bundle 'motemen/git-vim'
Bundle 'pangloss/vim-javascript'
Bundle 'altercation/vim-colors-solarized'
Bundle 'dag/vim-fish'
Bundle 'jshint.vim'

syn on
filetype on
filetype plugin indent on
colors solarized
compiler ruby
set t_Co=256

