" JavaScript Settings
" ___________________________________________________
"
" (These settings are run after /usr/share/vim/vim*/ftplugin/javascript.vim)

setlocal textwidth=79
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

" Add columns to mark the end of long docstring lines and normal lines
let &l:colorcolumn=join(range(80,999),",")
