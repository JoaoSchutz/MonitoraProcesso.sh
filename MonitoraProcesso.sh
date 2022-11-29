#!/bin/bash

#######################################
#     Nome: Monitora Processo         #
#     Data: 01/11/2022                #
#     Autor: João Schütz              # 
#######################################

if [ "$#" =  0 ] 
then 
	echo "Informe algum processo para ser monitorado!"
	echo "Exemplo: ./MonitoraProcesso (NOME DO PROCESSO)"
	exit 0
fi
while true ##CRIA UM LOOP INFINITO
do
	if ps aux | grep $1 | grep -v grep | grep -v $0 > /dev/null
	then
		echo "$1 está em execução"
		sleep 3
	else
		echo "$1 não está em execução"
		sleep 3
	fi
done
