" C Settings
" ___________________________________________________
"
" (These settings are run after /usr/share/vim/vim*/ftplugin/c.vim)

set textwidth=80
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set fileformat=unix

" Add columns to mark the end of lines
let &colorcolumn=join(range(81,999),",")
