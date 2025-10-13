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
