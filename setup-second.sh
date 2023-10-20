#!/usr/bin/zsh

if (( $EUID == 0 ))
then
   echo "Dont run this script as root, run as user you want to setup for."
   exit 1
fi

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
source ~/.zshrc
source "$SCRIPT_DIR/programming-tools/setup.sh"
source "$SCRIPT_DIR/vim/setup.sh"
source "$SCRIPT_DIR/i3/setup.sh"
