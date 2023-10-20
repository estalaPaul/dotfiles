echo "Setting up neovim"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
sudo pacman -S neovim fzf bat ripgrep --noconfirm > /dev/null
rm -rf ~/.config/nvim
cp -r "$SCRIPT_DIR/vim/nvim" ~/.config/
