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

