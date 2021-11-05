#!/bin/bash

#
# Description:  automatic system update
#
# Usage:        system_update
#
# Example:      ./system_update
#
# Author:       100% Free Software
#
# Last update: 5 november 2021
#

[ $EUID -ne 0 ] && { echo "$0 - Foutmelding: dit script moet worden uitgevoerd als root of een gebruiker uit de wheel groep via sudo."; exit 1; }

read -p "Attentie AJB: je systeem wordt geupdate en gereboot. Wijzigingen kunnen niet worden geannuleerd. Weet je zeker dat je verder wilt gaan (Y/n)? " q
[[ $q != "Y" ]] && exit 1

sudo pacman -Syy
[ $(sudo pacman -Su --print | wc -c) == 0 ] && { echo "Geen updates beschikbaar"; exit 1; }

pacman -Syy && pacman -Su --noconfirm && reboot

exit 0
