#!/bin/bash

echo "Installing YAY"
sudo rm -rf /tmp/yay
git clone https://aur.archlinux.org/yay.git /tmp/yay > /dev/null
cd /tmp/yay
makepkg -si --noconfirm > /dev/null

echo "Setting alacritty terminal up"
rm -rf ~/.config/alacritty
mkdir -p ~/.config/alacritty
sudo pacman -S lsof alacritty --noconfirm > /dev/null
cp "$SCRIPT_DIR/terminal/alacritty.toml" ~/.config/alacritty/

echo "Installing zsh as default shell with theme"
sudo pacman -S zsh zsh-completions --noconfirm > /dev/null
chsh -s /usr/bin/zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k > /dev/null
cp "$SCRIPT_DIR/terminal/.zshrc" ~/
cp "$SCRIPT_DIR/terminal/.p10k.zsh" ~/

echo "Adding scripts"
yay -S downgrade --noconfirm > /dev/null
cp -rf "$SCRIPT_DIR/terminal/bin" ~/
