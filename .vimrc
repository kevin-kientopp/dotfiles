call plug#begin('~/.vim/plugged')
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/vim-js-pretty-template'
Plug 'jason0x43/vim-js-indent'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'airblade/vim-gitgutter'
Plug 'gnattishness/cscope_maps'
Plug 'Yggdroot/LeaderF'
call plug#end()

set expandtab shiftwidth=2 softtabstop=2 
set ignorecase smartcase
set hidden
set tags=./tags,tags,~/code/sources/tags
set path=.,/usr/include,,,**,~/code/sources/**

" Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
