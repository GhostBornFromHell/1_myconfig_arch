#!/bin/bash

FILE="$1"


#Si c'est une image, affiche avec icat
if [[ $(file --mime "$FILE") =~ image ]]; then

    kitten icat --stdin no --transfer-mode memory --place 40x40@0x0 "$FILE"
else
    # Sinon texte avec bat
    bat --style=numbers --color=always "$FILE"
fi
kitten icat --clear
