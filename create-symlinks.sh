#!/bin/bash

dotfiles_dir=$HOME/.dotfiles

# Array of files/folders to link
declare -A links=(
    ["$HOME/.config/nvim"]="$dotfiles_dir/nvim"
    ["$HOME/.config/zsh"]="$dotfiles_dir/zsh"
    ["$HOME/.zshenv"]="$dotfiles_dir/.zshenv"
)

echo "What would you like to do?"
echo "1) Create symlinks"
echo "2) Delete symlinks"
read -p "Choose an option (1 or 2): " option

case $option in
    1)
        for dest in "${!links[@]}"; do
            src="${links[$dest]}"
            
            mkdir -p "$(dirname "$dest")"

            if [ -e "$dest" ] || [ -L "$dest" ]; then
                echo "Backing up: $dest -> $dest.bak"
                mv "$dest" "$dest.bak"
            fi

            ln -sfv "$src" "$dest"
        done
        ;;
    2)
        for dest in "${!links[@]}"; do
            if [ -L "$dest" ]; then
                rm -v "$dest"
            else
                echo "Skipping: $dest (not a symbolic link)"
                fi
            done
            ;;
    *)
        echo "Invalid option"
        exit 1
        ;;
esac
