#!/bin/sh
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

# Install oh-my-zsh
if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "oh-my-zsh already installed, skipping"
else
  echo "Installing oh-my-zsh..."
  KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install Powerlevel10k
P10K_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
if [ -d "$P10K_DIR" ]; then
  echo "Powerlevel10k already installed, skipping"
else
  echo "Installing Powerlevel10k..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"
fi

# Stow all packages
echo "Stowing packages..."
for dir in "$DOTFILES"/*/; do
  pkg="$(basename "$dir")"
  echo "  stow $pkg"
  stow --dir="$DOTFILES" --target="$HOME" "$pkg"
done

echo ""
echo "Done. Open a new shell to complete Powerlevel10k setup."
