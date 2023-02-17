" C Settings
" ___________________________________________________
"
" (These settings are run after /usr/share/vim/vim*/ftplugin/c.vim)

setlocal textwidth=80
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

" Add columns to mark the end of lines
let &l:colorcolumn=join(range(81,999),",")
