# Installation commands

## Customization

```bash
# tweak-tool
 sudo apt install gnome-tweak-tool
```
  
## Software

```bash
# flameshot
sudo apt install flameshot
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot ''
# Go to Settings -> Devices -> Keyboard and scroll to the end.
# Press + and you will create custom shortcut. Enter name: "flameshot", command:
/usr/bin/flameshot gui
# Set in Flameshot settings to launch on system start

# Peek
sudo add-apt-repository ppa:peek-developers/stable && \
sudo apt update && \
sudo apt install peek

# VLC
sudo snap install vlc
```

- [ ] TeamViewer
- [ ] OBS

## Messaging

```bash
# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# slack
sudo snap install slack --classic
# telegram
sudo snap install telegram-desktop
# skype
sudo snap install skype --classic

# zoom
# download zoom, then install
sudo dpkg -i zoom_amd64.deb
sudo apt install -f
sudo dpkg -i zoom_amd64.deb
```

## System

```bash
# NVIDIA drivers
ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
# alternatively, install desired driver
sudo apt install nvidia-390

# blueman
sudo apt install blueman
```

- [ ] CUDA

## Programming

```bash
# git
sudo apt install git
# wget
sudo apt install wget
# cmake
sudo apt install -y cmake

# anaconda after installing
conda config --set auto_activate_base False

# gt creator
cp $HOME/AdoreIt/UbuntuSetup/creator-dark_pink_types.xml /
$HOME/.config/QtProject/qtcreator/styles/creator-dark_pink_types.xml

#vs code
cp $HOME/AdoreIt/UbuntuSetup/settings.json $HOME/.config/Code/User/settings.json

# vim-gtk
sudo apt install vim-gtk

# tmux
sudo apt install tmux
cp $HOME/AdoreIt/UbuntuSetup/.tmux.conf $HOME/.tmux.conf
```

## Utils

```bash
#npm
sudo apt install nodejs
sudo apt install npm

# fuzzy search
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
# clang-format
sudo apt install clang-format
# autoconf
sudo apt install autoconf
# gtop -g
sudo npm install gtop -g
```

- [ ] ranger
- [ ] openssh & VNC

## Libs

- [ ] OpenCV
- [ ] RapidJSON

## Other

```bash
# .inputrc
cp $HOME/AdoreIt/UbuntuSetup/.inputrc $HOME/.inputrc

# generate ssh-keygen github
ssh-keygen -t rsa -b 4096 -C "adress@mail"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
# copy and paste .pub to git site

# generate ssh-keygen bitbucket
ssh-keygen
ssh-add /home/natalie/.ssh/id_rsa_bitbucket
cat ~/.ssh/id_rsa_bitbucket.pub
# copy and paste .pub to bitbucket site

# In Templates: New File
touch $HOME/Templates/"New File"
```
