if &compatible
  set nocompatible
end


" VUNDLE PLUGINS
" ___________________________________________________
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
let s:vundle_dir=$HOME."/.vim/bundle/Vundle.vim"
if isdirectory(s:vundle_dir)
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  " alternatively, pass a path where Vundle should install plugins
  "call vundle#begin('~/some/path/here')

  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  " Keep Plugin commands between vundle#begin/end.
  " Plugin 'name/of/plugin/here'
  if filereadable(expand("~/.vim/local_plugins.vim"))
    source ~/.vim/local_plugins.vim
  endif
  "
  " All of your Plugins must be added before the following line
  call vundle#end()            " required
endif
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
