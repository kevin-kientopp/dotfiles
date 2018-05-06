call plug#begin('~/.vim/plugged')
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/vim-js-pretty-template'
Plug 'jason0x43/vim-js-indent'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'airblade/vim-gitgutter'
Plug 'gnattishness/cscope_maps'
call plug#end()

set expandtab shiftwidth=2 softtabstop=2
set hidden
set hlsearch
" Search in tags file in current file's dir. Then search in cwd tags file. Then search in dependencies tags file.
set tags=./tags,tags,~/code/dependencies/tags
" Set path to current file's dir, followed by cwd (,,), followed by any subdir of cwd.
set path=.,,,,**,~/code/dependencies/**

set wildignore=*.class,*/node_modules/**,*/dist/**

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM AUTOCMDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimrcEx
  " Clear all autocmds in the group
  autocmd!
  " Jump to last cursor position unless it's invalid or in an event handler
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
  " Remove trailing whitespace
  autocmd BufWritePre * :%s/\s\+$//ge
  autocmd BufReadPost /clientdata/git/skrill/platform/* shiftwidth=4 softtabstop=4
augroup END
