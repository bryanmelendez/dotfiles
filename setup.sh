# essential apps
sudo pacman -S --needed \
neovim \
vim \
obsidian \
discord \
spotify-launcher \
syncthing \
alacritty \
firefox \
tmux \
ranger \
foliate

# essential util packages
sudo pacman -S --needed \
cmake \
make \
git \
valgrind \
neofetch \
stow \
samba \
avahi \
man-db \
ripgrep

# Check if yay is installed
if pacman -Q "yay" &> /dev/null; then
    echo "Package 'yay' is installed."
else
    sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
fi

# aur packages
yay -S --needed \
todoist-appimage

# uncomment this 
# sudo systemctl enable syncthing@bryan.service && sudo systemctl start syncthing@bryan.service
# sudo systemctl enable samba.service && sudo systemctl start samba.service
# sudo systemctl enable avahi-daemon.service && sudo systemctl start avahi-daemon.service

# clone git repos
# (copy and paste from the repos' readmes)
# tpm
# packer
# fzf
# gnome theme
# gtk icons

echo "Setup complete!"
