# Quick Virtual Resolution Changer  
  
## menu_QVRC.sh  
Changer "eDP-1" dans "menu_QVRC.sh" par le nom votre moniteur actuel  
pour le savoir entrer la commande suivante dans un terminal  
`xrandr`  
voici ma sortie a titre d'exemple  
Screen 0: minimum 320 x 200, current 1920 x 3240, maximum 8192 x 8192  
eDP-1 connected primary 1920x3240+0+0 (normal left inverted right x axis y axis) 381mm x 214mm panning 1920x3240+0+0    
  
## exec_QVRC.sh  
"x-terminal-emulator" est le terminal par défault utilisé dans le script "exec_QVRC.sh"   
changer son nom par le terminal que vous utilisez 
voici la commande pour savoir si il est installé  
`which x-terminal-emulator`  
  
## rendre exécutable les 2 scripts  
`sudo chmod 755 exec_QVRC.sh`  
`sudo chmod 755 menu_QVRC.sh`  
  
## comment lancer le programe  
a partir d'une session graphique cliquer sur "exec_QVRC.sh"  
a partir d'un terminal utiliser "menu_QVRC.sh"  
