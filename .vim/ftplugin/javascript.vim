set grepprg=LC_ALL=C\ grep\ -nrsH\ --exclude-dir={node_modules,.git,Session.vim} " External grep command to use

setlocal suffixesadd+=.js,.jsx,.json

setlocal isfname+=@-@

setlocal include=^\\s*[^\/]\\+\\(from\\\|require(['\"]\\)

set wildignore=**/node_modules/**,**/dist/**

nnoremap <leader>l "zyiwOconsole.log("<c-r>z =", <c-r>z);<esc>
