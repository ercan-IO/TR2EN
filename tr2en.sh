#!/bin/bash

F=("ı" "ğ" "ü" "ş" "ö" "ç" "İ" "Ğ" "Ü" "Ş" "Ö" "Ç")
R=("i" "g" "u" "s" "o" "c" "I" "G" "U" "S" "O" "C")
#R=("i" "g" "u" "s" "o" "c" "i" "g" "u" "s" "o" "c")

for i in ${!F[@]}
do
	FX=${F[i]}
	RX=${R[i]}
	sed -i.bak$i -e "s/$FX/$RX/g" $1
done
