#!/bin/bash

ln -snf ~/AdoreIt/LinuxSetup/.vimrc ~/.vimrc
ln -snf ~/AdoreIt/LinuxSetup/.inputrc ~/.inputrc
ln -snf ~/AdoreIt/LinuxSetup/.bashrc ~/.bashrc
ln -snf ~/AdoreIt/LinuxSetup/.profile ~/.profile
ln -snf .profile ~/.bash_profile
ln -snf ~/AdoreIt/LinuxSetup/.Xresources ~/.Xresources

cp -rsPf ~/AdoreIt/LinuxSetup/.config ~
cp -rsPf ~/AdoreIt/LinuxSetup/.moc ~
cp -rsPf ~/AdoreIt/LinuxSetup/.scripts ~
cp -rsPf ~/AdoreIt/LinuxSetup/.urxvt ~

mkdir -p ~/.vim/tmpdirs/undodir
