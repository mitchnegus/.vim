" LaTeX Settings
" ___________________________________________________
"
" (These settings are run after /usr/share/vim/vim*/ftplugin/tex.vim)

set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set linebreak
set fileformat=unix
" Use the TeX specific deathstar version
colorscheme deathstar-tex
" Compile the document using a provided makefile
nnoremap <silent> <leader>t :call ft#tex_compile#makeCompile()<CR>
