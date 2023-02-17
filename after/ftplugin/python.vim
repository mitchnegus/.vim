" Python Settings
" ___________________________________________________
"
" (These settings are run after /usr/share/vim/vim*/ftplugin/python.vim)

" Enforce PEP8 compliance
setlocal textwidth=79
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

" Add columns to mark the end of long docstring lines and normal lines
let &l:colorcolumn="73,".join(range(80,999),",")

" Bind `,X` to save file if modified and execute python script in a buffer.
nnoremap <silent> <leader>x :call ft#run_python#SaveAndExecutePython()<CR>
vnoremap <silent> <leader>x :<C-u>call ft#run_python#SaveAndExecutePython()<CR>
