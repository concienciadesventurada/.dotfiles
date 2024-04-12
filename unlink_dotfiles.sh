#!/bin/bash

main() {
    cd $HOME/.config

    if [ "$(pwd)" = "$HOME/.config" ]; then
        lns=$(ls -l | grep "^l" | awk '{ print $9 }')

        if [ "$lns" != "" ]; then
            for ln in $lns; do
                unlink $ln
            done

            echo "All lns cleaned successfully!"
        fi
    else
        echo "Something went wrong :("
    fi
}

main
