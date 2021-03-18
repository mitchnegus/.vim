"===============================================================================
"                              Mitch's vimrc
"===============================================================================


" Author: Mitch Negus [www.mitchnegus.com]
" ______________________________________________________________________________
"


" PLUGINS
" ___________________________________________________
"
if filereadable(expand("~/.vim/plugins.vim"))
  source ~/.vim/plugins.vim
endif
" Put your non-Plugin stuff after this line


" APPEARANCE
" ___________________________________________________
"
" Use the deathstar color scheme
colorscheme deathstar


" GENERAL SETTINGS
" ___________________________________________________
"
" Add syntax coloring
syntax on
" Show the current path in the title bar
set title
" Show line numbers
set number
" Show the cursor position
set ruler
" Enable folding
set foldmethod=indent
set foldlevel=99
" Yank selection to system clipboard
set clipboard^=unnamed,unnamedplus
" Hide mode from bottom of the screen (shown by `vim-airline` instead)
set noshowmode


" COMMANDS
" ___________________________________________________
"
if filereadable(expand("~/.vim/mappings.vim"))
  source ~/.vim/commands.vim
endif


" MAPPINGS
" ___________________________________________________
"
if filereadable(expand("~/.vim/mappings.vim"))
  source ~/.vim/mappings.vim
endif


" OPTIONS
" ___________________________________________________
"
if filereadable(expand("~/.vim/options.vim"))
  source ~/.vim/options.vim
endif
