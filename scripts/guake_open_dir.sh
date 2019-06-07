#!/bin/sh
directory=$(dirname "${NAUTILUS_SCRIPT_SELECTED_FILE_PATHS}")
guake -n "$directory"
