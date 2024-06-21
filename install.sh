#!/bin/bash
script_dir=$(dirname "$0")
echo "The script is located in: $script_dir"

install_chezmoi() {
    apt install zsh
    sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply --source-path "$script_dir"
}

install_zsh() {
    apt install zsh
    chsh -s "$(which zsh)"
}

install_zsh
install_chezmoi
