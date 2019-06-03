#!/bin/sh

echo \
'#!/bin/sh
guake -e "cd ${NAUTILUS_SCRIPT_SELECTED_FILE_PATHS}"' \
>~/.local/share/nautilus/scripts/"Open Dir in Guake"

chmod +x ~/.local/share/nautilus/scripts/"Open Dir in Guake"

nautilus ~/.local/share/nautilus/scripts/