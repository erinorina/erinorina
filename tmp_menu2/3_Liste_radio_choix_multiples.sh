#Liste radio et liste à choix multiples
#! /bin/sh
DIALOG=${DIALOG=dialog}
fichtemp=`tempfile 2>/dev/null` || fichtemp=/tmp/test$$
trap "rm -f $fichtemp" 0 1 2 5 15

$DIALOG --backtitle "Choisissez votre chanteur préféré" \
	--title "Mon chanteur préféré" --clear \
        --checklist "Bonjour, vous pouvez choisir votre chanteur préféré ici  " 20 61 5 \
	"Brel" "Jacques Brel" off\
         "Aznavour" "Charles Aznavour" off\
          "Brassens" "Georges Brassens" ON\
           "Nougaro" "Claude Nougaro" off\
            "Souchon" "Alain Souchon" off\
             "Balavoine" "Daniel Balavoine" off 2> $fichtemp
valret=$?
choix=`cat $fichtemp`
case $valret in
  0)
   echo "'$choix' est votre chanteur préféré";;
  1)
   echo "Appuyé sur Annuler.";;
  255)
   echo "Appuyé sur Echap.";;
esac
