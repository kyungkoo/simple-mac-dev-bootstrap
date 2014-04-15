#!/bin/bash

# install homebrew
echo "Install Homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# install homebrew formula
# python, nodejs, vim, tree, git, gradle, tmux
echo "Install formula"
brew install python node vim tree git gradle tmux

vimfile="$HOME/.vimrc"

if [ -f $vimfile ]; then
    echo "vimrc already exist!"
else
    echo "start download vimrc using curl"
    curl -o $HOME/.vimrc https://raw.githubusercontent.com/kyungkoo/simple-mac-dev-bootstrap/master/vimrc
fi
