#!/usr/bin/bash
for ELEMENT in 2016 2017 2018
do
    echo "Nombre de lieux $ELEMENT"
    cat /media/anne/Disque/Archive/Exercice1/ann/$ELEMENT/*.ann | grep Location | wc -l
done

#echo "Nombre de lieux en 2016:"
#cat /media/anne/Disque/Archive/Exercice1/ann/#2016/2016*.ann | grep Location | wc -l
#echo "Nombre de lieux en 2017:"
#cat /media/anne/Disque/Archive/Exercice1/ann/2017/* | grep Location | wc -l
#echo "Nombre de lieux en 2018:"
#cat /media/anne/Disque/Archive/Exercice1/ann/2018/* | #grep Location | wc -l



#!/usr/bin/bash
#CHEMIN=$1
#echo "Nombre de lieux en 2016:"
#cat "$CHEMIN/2016/"*| grep Location | wc -l
#echo "Nombre de lieux en 2017:"
#cat "$CHEMIN/2017/"* | grep Location | wc -l
#echo "Nombre de lieux en 2018:"
#cat "$CHEMIN/2018/"* | grep Location | wc -l

#!/usr/bin/bash

#echo "Nombre de lieux en 2016:"
#cat "./2016/"*| grep Location | wc -l
#echo "Nombre de lieux en 2017:"
#cat "./2017/"* | grep Location | wc -l
#echo "Nombre de lieux en 2018:"
#cat "./2018/"* | grep Location | wc -l
