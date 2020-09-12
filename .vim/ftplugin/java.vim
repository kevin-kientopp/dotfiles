setlocal shiftwidth=4 softtabstop=4

nnoremap <leader>l "zyiwOSystem.err.println("<c-r>z = " + <c-r>z);<esc>

nnoremap <buffer> <leader>g :grep -r --include '*.java' "<c-r>=expand("<cword>")<CR>" .

function! s:javaGetter() abort
  exe "normal $bb\"zyww\"xyw}opublic zgetxýablll~A() {return x;}ýa"
endfunction

command! JavaGetter call s:javaGetter()
