#!/bin/bash

# command line tool directory
cmd_line_tools_dir="/Library/Developer/CommandLineTools"

# check command line tools installed
if [ -d $cmd_line_tools_dir ]; then
    # install xcode command line tools
    echo "Xcode CommandLineTools already installed!"
    # install homebrew
    echo "Install Homebrew"
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

    # install homebrew formula
    # python, nodejs, vim, tree, git, gradle, tmux
    echo "Install formula"
    brew install python node vim tree git gradle tmux

    # vimrc file path
    vimfile="$HOME/.vimrc"

    # check vimrc file exist
    if [ -f $vimfile ]; then
        echo "vimrc already exist!"
    else
        echo "start download vimrc using curl"
        curl -o $HOME/.vimrc https://raw.githubusercontent.com/kyungkoo/simple-mac-dev-bootstrap/master/vimrc
    fi
else
    echo "install command line tools after install it, please reexcute this script"
    echo "Install xcode command line tools"
    xcode-select --install
fi