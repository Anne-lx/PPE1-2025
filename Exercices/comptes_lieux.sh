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

cat /media/anne/Disque/Archive/Exercice1/ann/$1/$1_$2*.ann | grep Location|cut -f 3 | sort|uniq -c |sort -g |tail -n $3

