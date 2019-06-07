# Guake

## Install

https://guake.readthedocs.io/en/stable/user/installing.html

``` bash
# Checkout the HEAD of the source tree wit
git clone https://github.com/Guake/guake.git
# make sure that you have the needed system dependencies
cd guake && ./scripts/bootstrap-dev-[debian, arch, fedora].sh run make
# install Guake itself
make
sudo make install
```

To uninstall, still in the source directory:

``` bash
make
sudo make uninstall
```

Tips for a complete Guake reinstallation (without system dependencies):

``` bash
sudo make uninstall && make && sudo make install
# Or use this shortcut:
make reinstall  # (do not sudo it!)
```

## Load settings

``` bash
guake --save-preferences prefs.guake
guake --restore-preferences prefs.guake
```

## Add open in Guake

``` bash
cp $HOME/AdoreIt/UbuntuSetup/scripts/guake_open_dir.sh \
$HOME/.local/share/nautilus/scripts/guake_open_dir.sh

chmod +x $HOME/.local/share/nautilus/scripts/guake_open_dir.sh
```
