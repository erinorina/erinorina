    #!/usr/bin/bash
    #================================================
    # F O N C T I O N S . . .
    #================================================
    #------------------------------------------------
    # Menu - Affichage d'un menu
    #------------------------------------------------
    # Args : $1    = Titre du menu
    #        $2n   = Fonction associée 'n' au choix
    #        $2n+1 = Libellé du choix 'n' du menu
    #------------------------------------------------
    Menu()
    {
      local -a menu fonc
      local titre nbchoix
      # Constitution du menu
      if [[ $(( $# % 1 )) -ne 0 ]] ; then
         echo "$0 - Menu invalide" >&2
         return 1
      fi
      titre="$1"
      shift 1
      set "$@" "return 0" "Sortie"
      while [[ $# -gt 0 ]]
      do
         (( nbchoix += 1 ))
         fonc[$nbchoix]="$1"
         menu[$nbchoix]="$2"
         shift 2
      done
      # Affichage menu
      PS3="Votre choix ? "
      while :
      do
         echo
         [[ -n "$titre" ]] && echo -e "$titre\n"
         select choix in "${menu[@]}"
         do
            if [[ -z "$choix" ]]
               then echo -e "\nChoix invalide"
               else eval ${fonc[$REPLY]}
            fi
            break
         done || break
      done
    }
    #------------------------------------------------
    # CHome - Création fichier home.tar.gz
    #------------------------------------------------
    CHome()
    {
       echo -e "\n***\n*** CHome\n***\n"
    }
    #------------------------------------------------
    # CEtcRoot - Création fichiers etc/root.tar.gz
    #------------------------------------------------
    CEtcRoot()
    {
       echo -e "\n***\n*** CEtcRoot\n***\n"
    }
    #------------------------------------------------
    # GHome - Gravage fichier home.tar.gz
    #------------------------------------------------
    GHome()
    {
       echo -e "\n***\n*** GHome\n***\n"
    }
    #------------------------------------------------
    # GEtcRoot - Gravage fichiers etc/root.tar.gz
    #------------------------------------------------
    GEtcRoot()
    {
       echo -e "\n***\n*** GEtcRoot\n***\n"
    }
    #================================================
    # M A I N . . .
    #================================================
    Menu \
      "+++ Menu Sauvegardes +++"                           \
      CHome    "Création fichier  home.tar.gz"          \
      CEtcRoot "Création fichiers  etc.tar.gz root.tar.gz" \
      GHome    "Gravage  fichier  home.tar.ge"             \
      GEtcRoot "Gravage  fichiers  etc.tar.gz root.tar.gz"
