set expandtab shiftwidth=2 softtabstop=2
set hidden
set hlsearch
set nofileignorecase
" Search in tags file in current file's dir. Then search in cwd tags file. Then search in dependencies tags file.
set tags=./tags,tags,~/dev/shareworks/src/tags,~/dev/shareworks/test/tags,~/dev/shareworks/gwtclient/tags,~/dev/shareworks/gwtapi/tags,~/dev/shareworks/swlib-core/tags,~/dev/shareworks/api/tags,~/dev/shareworks/gwtBridge/tags,~/dev/shareworks/swEJB/tags,~/dev/shareworks/sw-esoaplib-core/tags,~/dev/shareworks/sw-pk/tags,~/dev/shareworks/sw-esoaplib-egc/tags,~/dev/shareworks/annotations/tags

" Set path to current file's dir, followed by cwd (,,), followed by any subdir of cwd.
set path=.,,**

set wildignore=*.class

" Use new regular expression engine
" set re=0

nnoremap <leader>g :grep -R "<c-r>=expand("<cword>")<CR>" .

" Sort paragraph and remove duplicates
nnoremap <leader>s vip:sort u<cr>

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
augroup END
