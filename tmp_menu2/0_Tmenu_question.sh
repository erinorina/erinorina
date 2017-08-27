    #!/usr/bin/bash
    # OuiNon -- Saisie réponse Oui/Non
    # Appel:  $1 = Question
    #         $2 = Réponse par défaut
    # Status: 0  = Oui
    #         1  = Non
    
    OuiNon()
    {
       local qst def rep
       qst="${1:-'Oui ou Non ? '}"
       def="$2"
       while :
       do
          read -p "$qst" rep || exit 1
          case "$(echo "${rep:-$def}" | tr '[a-z]' '[A-Z]')" in
            O|OUI|Y|YES) return 0 ;;
            N|NON|NO)    return 1 ;;
            "" )          :        ;;
            *)           echo "Réponse invalide: $rep" ;;
          esac
       done
    }
    # Utilisation de la fonction
    if OuiNon "Voulez vous affichez la date ? " Oui
       then  date
       else  echo "Dommage"
    fi
/bin/bash
