#!/bin/bash

if (( $EUID == 0 ))
then
   echo "Dont run this script as root, run as user you want to setup for."
   exit 1
fi

sudo pacman -S jq acpi ksnip playerctl xclip ttf-inconsolata vim discord onefetch bat inkscape libreoffice-still feh --noconfirm > /dev/null

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
source "$SCRIPT_DIR/terminal/setup.sh"
echo "Log out and login again then run setup-second.sh"
