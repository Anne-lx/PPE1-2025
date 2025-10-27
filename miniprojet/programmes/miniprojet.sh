#!/usr/bin/bash

CHEMIN_FICHIER=$1
CHEMIN_TABLEAU=$2
if [ $# -ne 2 ];
then
    echo " Donnez deux arguments !"
    exit
fi

if [ ! -f "$CHEMIN_FICHIER" ];
then
    echo "$CHEMIN_FICHIER Ce n'est pas un fichier!"
    exit
fi

> "$CHEMIN_TABLEAU"


nbr_lignes=0
while read -r LINE;
do
	if [[ $LINE =~ ^https?:// ]]
	then
	 nbr_lignes=$(expr $nbr_lignes + 1) #ATTENTION_mettre_espace_entre_s_+_1

	 INFOS_CURL=$(curl -i -L "$LINE" )
	 # echo -e "$INFOS_CURL\t$LINE" >> "$CHEMIN_TABLEAU" #affiche tout dans la lignedoncNON
	 HTTP_REP=$(echo "$INFOS_CURL" | head -n 1 | tr -d '\r')
	 MOTS=$(echo "$INFOS_CURL" | wc -w | tr -d '\r')
	 ENCODAGE=$( echo "$INFOS_CURL" |head -n 10 | grep charset | cut -d "="  -f 2 | tr -d '\r')
	 echo -e "$nbr_lignes\t$LINE\t$HTTP_REP\t$MOTS\t$ENCODAGE" >> "$CHEMIN_TABLEAU" #mettre_une_tabulation_avec_\t,_comme_une_regex

	fi
done < "$CHEMIN_FICHIER";

