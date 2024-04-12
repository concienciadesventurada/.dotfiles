#!/bin/bash

shopt -s dotglob # enable list hidden files

source $PWD/environment.d/envvars.conf

shell_configs() {
    for file in shell/*; do
        fullpath=$(realpath $file)
        read -p "Source ${file} (Y/n): " rep

        if [ -z "$rep" ] || [ "$rep" = "y" ]; then
            echo "source $fullpath" >> $ZDOTDIR/.zshrc
        fi
    done
}

shell_configs
