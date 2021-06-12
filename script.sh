#!/bin/bash
#recibo 2 parametros 
#$1 es Codigo de tarjeta  fila -f1 MC 
#$2 es Un banco fila -f3 Chase 
echo parametros  1: $1  2: $2

 if [ -z "$1" ] || [ -z "$2" ];
 then
    echo INVALID PARAMETERS
    exit 1
 else
    array=()
    let total=0
    while IFS="," read -r line; do
        acronym=$(echo $line | cut -d, -f1)
        bank=$(echo $line | cut -d, -f3 | tr -d '\r')
        if [[ "$acronym" == "$1" ]] && [[ "$bank" == "$2" ]];
            then
            card=$(echo $line | cut -d"," -f4)
            add=$(echo $line | cut -d"," -f11)
            array[${#array[@]}]=$card
            total=$(expr $total + $add)
        fi
    done < Archivos_Tarjetas_de_crédito_100_CC_Records.csv
    
    if ! [ -z "$array" ];
    then
        echo ${array[@]}
        echo $total
    fi
    exit 0
 
fi



