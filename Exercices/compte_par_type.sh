#!/usr/bin/bash
if [[ $1 =~ [1234567890]+ ]]
then
    echo "c'est bien un nombre"
else
    echo "entrez un nombre"
fi
if [[ $2 =~ [Aa-zZ]+ ]]
then
    echo "c'est bien un mot"
else
    echo "entrez un mot"
fi
    cat /media/anne/Disque/Archive/Exercice1/ann/$1/$1*.ann | grep  $2| wc -l

#correction compte_par-type.sh
#DATADIR=$1
#ANNEE=$2
#TYPE=$3
#cat $DATADIR/$ANNEE/*.ann |grep "$TYPE| wc -l"

#DATADIR=$1
#ANNEE=$2
#TYPE=$3

#cd $DATADIR
#echo "nous sommes ici":
pwd
#cat ./$ANNEE/*.ann |grep "$TYPE| wc -l"
