
source ~/.vim/ftplugin/personal_settings.vim
source ~/.vim/ftplugin/eatchar.vim
source ~/.vim/ftplugin/personal_abbreviations.vim
source ~/.vim/ftplugin/visual_html_tag_wrap.vim
source ~/.vim/ftplugin/whitespace_hihglighter.vim
source ~/.vim/ftplugin/auto_tabularize.vim
source ~/.vim/ftplugin/remember_last_position.vim
source ~/.vim/ftplugin/omni_completions.vim
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

Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'samsonw/vim-task'
Bundle 'godlygeek/tabular'
Bundle 'vim-ruby/vim-ruby'
Bundle 'msanders/snipmate.vim'
Bundle 'mileszs/ack.vim'
Bundle 'rainux/vim-desert-warm-256'
Bundle 'desert.vim'
Bundle 'motemen/git-vim'

syn on
filetype on
filetype plugin indent on
colors desert
compiler ruby
set t_Co=256

