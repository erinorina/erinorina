# Quick Virtual Resolution Changer  
  
## menu_QVRC.sh  
Change "eDP-1" in menu_QVRC.sh to your current monitor  
to know the name of your monitor type in a terminal  
`xrandr`  
this is my output as exmaple    
Screen 0: minimum 320 x 200, current 1920 x 3240, maximum 8192 x 8192  
eDP-1 connected primary 1920x3240+0+0 (normal left inverted right x axis y axis) 381mm x 214mm panning 1920x3240+0+0    
  
## exec_QVRC.sh  
"x-terminal-emulator" is the default terminal used for exec_QVRC.sh   
change this by your current terminal  if you don't have it installed  
to see if it's installed  
`which x-terminal-emulator`  
  
## Mark as executable  
`sudo chmod 755 exec_QVRC.sh`  
`sudo chmod 755 menu_QVRC.sh`  
  
## How to launch  
from a graphical session use "exec_QVRC.sh"  
from a terminal use "menu_QVRC.sh"  
