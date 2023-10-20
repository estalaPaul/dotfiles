echo "Setting up audio"
sudo pacman -R pipewire-pulse pipewire-alsa --noconfirm > /dev/null
sudo pacman -S sof-firmware alsa-ucm-conf alsa-firmware alsa-utils pulseaudio pulseaudio-bluetooth pulseaudio-jack pulseaudio-alsa pavucontrol --noconfirm > /dev/null
sudo pacman -R xdg-desktop-portal pipewire-audio lib32-pipewire pipewire-media-session pipewire --noconfirm > /dev/null

echo "Setting up i3"
sudo pacman -S noto-fonts-emoji --noconfirm > /dev/null
cp -rf "$SCRIPT_DIR/i3/i3blocks" ~/.config/
cp -rf "$SCRIPT_DIR/i3/config" ~/.config/i3/

echo "Setting up dunst"
sudo pacman -S dunst --noconfirm > /dev/null
sudo pacman -R notify-osd --noconfirm > /dev/null
cp -rf "$SCRIPT_DIR/i3/dunst" ~/.config/
