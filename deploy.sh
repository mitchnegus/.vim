#!/bin/bash

# Deploy the .vim directory and components in a new terminal environment.

VIM_DIR=$(pwd)

# Install Vundle plugins
VIM_BUNDLE_DIR="$VIM_DIR/bundle"
VUNDLE_REPO="$VIM_BUNDLE_DIR/Vundle.vim"
mkdir -p $VIM_BUNDLE_DIR
if [ ! -d "$VUNDLE_REPO" ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_REPO
fi
vim +PluginInstall +qall
echo "Installed Vundle (and specified plugins)."

