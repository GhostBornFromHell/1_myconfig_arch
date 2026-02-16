#!/usr/bin/env zsh
set -e
              
WALLPAPER_DIR="$HOME/Downloads/img/"
INDEX_FILE="$HOME/.config/kitty/kitty_bg_index"
mkdir -p "$(dirname "$INDEX_FILE")"

# 📝 Initialise l’index si besoin
if [[ ! -f "$INDEX_FILE" ]]; then
echo 0 > "$INDEX_FILE"
fi

INDEX=$(<"$INDEX_FILE")


# 🔍 Vérifie que l’index est un nombre avec une regex sexy
if [[ ! "$INDEX" =~ '^[0-9]+$' ]]; then
INDEX=0
fi

# 📸 Liste triée des images
WALLPAPERS=("${(@f)$(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' \) | sort)}")

if [[ ${#WALLPAPERS[@]} -eq 0 ]]; then
echo "Aucune image trouvée dans $WALLPAPER_DIR 😢"
exit 1
fi

CURRENT="${WALLPAPERS[$((INDEX + 1))]}" # zsh arrays start at 1 🧠

# 💋 Transition sexy comme une caresse :
kitty +kitten icat --clear
echo -ne "\n~ Transition... déshabillage du fond actuel 😏 ~\n"

echo "image = $CURRENT"
echo " image trouver ${#WALLPAPERS[@]} "
echo " image ${INDEX}/${#WALLPAPERS[@]} - ${CURRENT##*/}"

sleep 0.8
kitty @ set-background-image "$CURRENT"

# 🔁 Passe au suivant
INDEX=$(( (INDEX + 1) % ${#WALLPAPERS[@]} ))
echo "$INDEX" > "$INDEX_FILE"
