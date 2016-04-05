#!/bin/bash

# color variables
ESC="\033["
RESET=$ESC"0m"
RED=$ESC"0;31;01m"
GREEN=$ESC"0;32;01m"

cat opciones.txt | sort -R | head -n 10 | while read OPTION; do
    if zenity --question --title shitty\ game --text "<span font=\"35\">$OPTION</span>" 2> /dev/null; then
        echo -e "${GREEN}BIEN $RESET$OPTION"
    else
        echo -e "${RED}MAL  $RESET$OPTION"
    fi
done
