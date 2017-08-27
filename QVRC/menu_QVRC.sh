#!/bin/bash

# while-menu-dialog: a menu driven system information program

DIALOG_CANCEL=1
DIALOG_ESC=255
HEIGHT=30
WIDTH=15
display_result() {
  dialog --title "$1" \
    --no-collapse \
    --msgbox "$result" 0 0
}

while true; do
  exec 3>&1
  selection=$(dialog \
    --backtitle "Quick Virtual Resolution Changer" \
    --title "Menu" \
    --clear \
    --cancel-label "Exit" \
    --menu "Please select your layout:" $HEIGHT $WIDTH 4 \
    "1" "Default 1920x1080" \
    "2" "Vdesk x2 1920x2160" \
    "3" "Vdesk x3 1920x3240" \
    "4" "Vdesk x4 1920x4320" \
    2>&1 1>&3)
  exit_status=$?
  exec 3>&-
  case $exit_status in
    $DIALOG_CANCEL)
      clear
      echo "Program terminated."
      exit
      ;;
    $DIALOG_ESC)
      clear
      echo "Program aborted." >&2
      exit 1
      ;;
  esac
  case $selection in
    0 )
      clear
      echo "Program terminated."
      ;;
    1 )
      result=$(exec x-terminal-emulator -e  xrandr --output eDP-1 --fb 1920x1080 --scale 1x1 --panning 1920x1080)
      ;;
    2 )
      result=$(exec x-terminal-emulator -e  xrandr --output eDP-1 --fb 1920x2160 --scale 1x1 --panning 1920x2160)
      ;;
    3 )
     result=$(exec x-terminal-emulator -e   xrandr --output eDP-1 --fb 1920x3240 --scale 1x1 --panning 1920x3240)
      ;;
    4 )
     result=$(exec x-terminal-emulator -e   xrandr --output eDP-1 --fb 1920x4320 --scale 1x1 --panning 1920x4320)
      ;;
  esac
done
