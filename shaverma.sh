#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
Black='\033[0;30m'
DarkGray='\033[1;30m'
LightRed='\033[1;31m'
Green='\033[0;32m'
LightGreen='\033[1;32m'
BrownOrange='\033[0;33m'
Yellow='\033[1;33m'
Blue='\033[0;34m'
LightBlue='\033[1;34m'
Purple='\033[0;35m'
LightPurple='\033[1;35m'
Cyan='\033[0;36m'
LightCyan='\033[1;36m'
LightGray='\033[0;37m'
White='\033[1;37m'

index=0

Rainbow=(${Purple} ${RED} ${LightRed} ${BrownOrange} ${Yellow} ${LightGreen} ${Green} ${LightCyan} ${Cyan} ${LightBlue} ${Blue} ${LightPurple} ${Purple})

lavash(){

    string=$1
    ((j=$index % ${#Rainbow}))
    ((index++))
    for (( i=0; i<${#string}; i++ )); do
        ((j++))
        if (($j == ${#Rainbow}))
        then
            ((j=0))
        fi
      echo -ne "${Rainbow[$j]}${string:$i:1}"
    done
    echo -e "${NC}"
}

while read string
do
    lavash $string
done
