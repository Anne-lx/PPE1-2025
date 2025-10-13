#!/usr/bin/bash

echo "Nombre de lieux en 2016:"
cat /media/anne/Disque/Archive/Exercice1/ann/2016/2016*.ann | grep Location | wc -l
echo "Nombre de lieux en 2017:"
cat /media/anne/Disque/Archive/Exercice1/ann/2017/* | grep Location | wc -l
echo "Nombre de lieux en 2018:"
cat /media/anne/Disque/Archive/Exercice1/ann/2018/* | grep Location | wc -l
