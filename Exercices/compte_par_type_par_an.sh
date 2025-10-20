#!/usr/bin/bash

if [[ $1 =~ [Aa-zZ]+ ]]
then
    echo "c'est bien un mot"
else
    echo "entrez un mot"
fi
echo "Nombre d'entités en 2016:"
./compte_par_type.sh 2016 $1
#/media/anne/Disque/Dossier PPE/PPE1-2025/Exercices/compte_par_type.sh
echo "Nombre d'entités en 2017:"
./compte_par_type.sh 2017 $1
echo "Nombre d'entités en 2018:"
./compte_par_type.sh 2018 $1

#Exo 2.a partie2 correction
#TYPE=$1
#bash compte_par_type.sh 2016 $TYPE
#bash compte_par_type.sh 2017 $TYPE
#bash compte_par_type.sh 2018 $TYPE
