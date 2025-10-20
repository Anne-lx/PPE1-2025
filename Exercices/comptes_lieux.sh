#!/usr/bin/bash

if [[ $1 =~ [\*1234567890]+ ]]
then
    echo "c'est bien un nombre"
else
    echo "entrez un nombre"
fi

if [[ $2 =~ [\*1234567890]+ ]]
then
    echo "c'est bien un nombre"
else
    echo "entrez un nombre"
fi

if [[ $3 =~ [1234567890]+ ]]
then
    echo "c'est bien un nombre"
else
    echo "entrez un nombre"
fi

#if [ !  -d $DATADIR
#then
#	echo « $DATADIR n’est pas un dossier »
#fi
#if [ ! -d $DATADI/2016]
#then
#	echo « $DATADIR n’est probablement pas lez bon dosseir »
#fi




cat /media/anne/Disque/Archive/Exercice1/ann/$1/$1_$2*.ann | grep Location|cut -f 3 | sort |uniq -c |sort -g |tail -n $3



#ANNEE=$1
#MOIS=$2
#TOPN=$3
#cat /media/anne/Disque/Archive/Exercice1/ann/$1/$1_$2*.ann | grep Location|cut -f 3 | sort |uniq -c |sort -n |tail -n $TOPN



#DATADIR=$1
#ANNEE=$2
#MOIS=$3
#TOPN=$4
#cat ./${ANNEE}/$1/${ANNEE}_${MOIS}*.ann | grep Location|cut -f3 | sort |uniq -c |sort -n |tail -n $TOPN



