#!/bin/bash

shopt -s dotglob

main() {
    dots_dir=$HOME/.dotfiles
    conf_dir=$HOME/.config

    #git clone https://github.com/concienciadesventurada/dotfiles $dots_dir 
    git clone https://github.com/concienciadesventurada/nvim $conf_dir 

    for dir in */; do
        if [ -d $dir ]; then
            ln -s $(realpath $dir) $conf_dir 
        else
            echo "Something went wrong creating dotfiles symlinks! :("
        fi
    done
}

main
