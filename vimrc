execute pathogen#infect()
filetype plugin indent on
syntax enable
set hidden
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set path+=**
set wildmenu
set number

" typescript-vim
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" vim-js-pretty-template
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces

