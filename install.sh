#!/bin/sh

# Fish
rm -rf $HOME/.config/fish/config.fish
ln -s -i $HOME/.dotfiles/fish/config.fish $HOME/.config/fish/config.fish

# Git
rm -rf $HOME/.gitconfig
ln -s -i $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig

