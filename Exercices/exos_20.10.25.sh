#!/usr/bin/bash #→ on indique comment le fichier doit être interpréter


if [$# -ne 1] #si le nombre d’argument n’est pas égal à 1
then #alors echo « ce programme demande un argument » on indique que ce programme veut un
#argument mais ça ne marche pas trop parce que l’utilisateur pourrait penser qu’il n’a pas mis #d’argument (si il #en a pas exemple mis 2) au lieu de penser qu’il n’en faut qu’un seul
		exit #si la condition n’est pas remplie alors on sort du programme et il faut #recommencer
fi #fin de la condition
FICHIER_URLS=$1 #on affecte une valeur qui sera l’argument $1 à la variable FICHIER_URLS
OK=0 #on affecte à la variable OK la valeur 0
NOK=0 #on affecte à la variable OK la valeur 0
while read -r LINE ; #tant que read peut lire (-r ne pas permettre aux barres obliques inverses de se comporter comme des caractères #d'échappement) des lignes on se s'arrete pas
do #il va
	echo »la ligne : $LINE » #afficher la ligne
	if [[ $LINE =~ ^https?:// ]] #si la ligne est une url (d'ailleurs on utilise des regex pour faire ça)
	then #alors
		echo « ressemble à une URL valide » #renvoi que ça ressemble à une URL valide
		OK=$(expr $OK +1) #on ajoute 1 à la varibale OK
	else #dans le cas où la variable n'est pas une URL
		echo « ne ressemble pas à une URL valide » #renvoi que ça ne ressemble à une URL valide
		NOK=$(expr $NOK + 1) #on ajoute 1 à la varibale OK
	fi #fin de la condition
done < $FICHIER_URLS
echo « $OK URLS et $NOK lignes douteuses » #dit que OK sont des URL et NOK des lignes douteuses
