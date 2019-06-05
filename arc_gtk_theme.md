# GTK Theming with Arc-Theme

## Arc-darker theme

```bash
sudo apt install arc-theme
```

Then change theme in Tweeks

## Icons theme

```bash
sudo add-apt-repository -u ppa:snwh/ppa
sudo apt install paper-icon-theme
```

Clone arc icons theme

```bash
git clone https://github.com/horst3180/arc-icon-theme --depth 1
cd arc-icon-theme/Arc/ && vim index.theme
```
Change Moka to Paper

```text
Inherits=Paper,Adwaita,gnome,hicolor
```

Install arc icons

```bash
cd .. && ./autogen.sh --prefix=/usr
sudo make install
```

**Final step:** change icons theme in Tweeks
