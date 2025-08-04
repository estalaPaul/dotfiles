echo "Setting up audio"
sudo pacman -S alsa-utils --noconfirm > /dev/null

echo "Setting up i3"
sudo pacman -S noto-fonts-emoji --noconfirm > /dev/null
cp -rf "$SCRIPT_DIR/i3/i3blocks" ~/.config/
cp -rf "$SCRIPT_DIR/i3/config" ~/.config/i3/

echo "Setting up dunst"
sudo pacman -S dunst --noconfirm > /dev/null
sudo pacman -R notify-osd --noconfirm > /dev/null
cp -rf "$SCRIPT_DIR/i3/dunst" ~/.config/
