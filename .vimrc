set expandtab shiftwidth=2 softtabstop=2
set hidden
set hlsearch
set nofileignorecase
" Search in tags file in current file's dir. Then search in cwd tags file. Then search in dependencies tags file.
set tags=./tags,tags,~/dev/shareworks/src/tags,~/dev/shareworks/test/tags,~/dev/shareworks/gwtclient/tags,~/dev/shareworks/gwtapi/tags,~/dev/shareworks/swlib-core/tags,~/dev/shareworks/api/tags,~/dev/shareworks/gwtBridge/tags,~/dev/shareworks/swEJB/gradle-build/generated-sources/tags
" Set path to current file's dir, followed by cwd (,,), followed by any subdir of cwd.
set path=.,,,,**

set wildignore=*.class

nnoremap <leader>g :grep -R "<c-r>=expand("<cword>")<CR>" .

" Sort paragraph.
nnoremap <leader>s vip:sort<cr>

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
  autocmd FileType java nnoremap <buffer> <leader>g :grep -R "<c-r>=expand("<cword>")<CR>" . --include '*.java'
  autocmd FileType java setlocal shiftwidth=4 softtabstop=4
  autocmd FileType javascript setlocal tags=tags
augroup END

function! s:javaGetter() abort
  exe "normal $bb\"zyww\"xyw}opublic zgetx€ýablll~A() {return x;}€ýa"
endfunction

command! JavaGetter call s:javaGetter()
