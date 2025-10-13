#!/usr/bin/bash

cat /media/anne/Disque/Archive/Exercice1/ann/$1/$1_$2*.ann | grep Location|cut -f 3 | sort|uniq -c |sort -g |tail -n $3

