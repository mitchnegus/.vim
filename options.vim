if &compatible
  set nocompatible
end


" GENERAL OPTIONS
" ___________________________________________________
"
" Define LaTeX as the default TeX flavor
let g:tex_flavor = "latex"


" LOCAL OPTIONS
" ___________________________________________________
"
if filereadable(expand("~/.vim/local_options.vim"))
  source ~/.vim/local_options.vim
endif
