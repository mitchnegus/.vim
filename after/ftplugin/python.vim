" Python Settings
" ___________________________________________________
"
" (These settings are run after /usr/share/vim/vim*/ftplugin/python.vim)

" Enforce PEP8 compliance
set textwidth=79
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

" Add columns to mark the end of long docstring lines and normal lines
let &colorcolumn="73,".join(range(80,999),",")

" Bind `,X` to save file if modified and execute python script in a buffer.
nnoremap <silent> <Leader>x :call ft#run_python#SaveAndExecutePython()<CR>
vnoremap <silent> <Leader>x :<C-u>call ft#run_python#SaveAndExecutePython()<CR>
