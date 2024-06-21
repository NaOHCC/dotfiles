#!/bin/bash
script_dir=$(dirname "$0")
echo "The script is located in: $script_dir"

install_chezmoi() {
    apt install git -y
    sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply --source-path "$script_dir"
}

install_zsh() {
    apt install zsh -y
    chsh -s "$(which zsh)"
}

apt update
install_zsh
install_chezmoi
