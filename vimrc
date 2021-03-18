"===============================================================================
"                              Mitch's vimrc
"===============================================================================


" Author: Mitch Negus [www.mitchnegus.com]
" ______________________________________________________________________________
"


set nocompatible              " be iMproved, required
filetype off                  " required


" VUNDLE PLUGINS
" ___________________________________________________
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
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
