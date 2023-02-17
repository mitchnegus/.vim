" LaTeX Settings
" ___________________________________________________
"
" (These settings are run after /usr/share/vim/vim*/ftplugin/tex.vim)

setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal autoindent
setlocal linebreak
setlocal fileformat=unix
" Use the TeX specific deathstar version
colorscheme deathstar-tex
" Compile the document using a provided makefile
nnoremap <silent> <leader>t :call ft#tex_compile#makeCompile()<CR>
