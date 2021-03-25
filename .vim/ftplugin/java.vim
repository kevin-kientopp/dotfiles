setlocal noexpandtab shiftwidth=4 softtabstop=4

nnoremap <leader>l "zyiwOSystem.err.println("<c-r>z = " + <c-r>z);<esc>

nnoremap <buffer> <leader>g :grep -r --include '*.java' "<c-r>=expand("<cword>")<CR>" .
