set expandtab shiftwidth=2 softtabstop=2
set hidden
set hlsearch
" Search in tags file in current file's dir. Then search in cwd tags file. Then search in dependencies tags file.
set tags=./tags,tags,~/code/dependencies/tags
" Set path to current file's dir, followed by cwd (,,), followed by any subdir of cwd.
set path=.,,,,**,~/code/dependencies/**

set wildignore=*.class,*/node_modules/**,*/dist/**

nnoremap <leader>g :grep -Rw <cword> .

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
  " autocmd BufWritePre * :%s/\s\+$//ge
  autocmd BufReadPost /clientdata/git/skrill/platform/* setlocal shiftwidth=4 softtabstop=4
  autocmd FileType java nnoremap <buffer> <leader>g :grep -Rw <cword> . --include *.java
augroup END
