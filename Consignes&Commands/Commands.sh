#!/bin/bash
#############################################
###                                       ###
###             CONSIGNES                 ###
###                                       ###
#############################################
#Script de reference :  -Commandes
#                       -Light automation
#
#############################################

#Menu PRINCIPAL
echo "Menu PRINCIPAL"
echo "Selection consigne"
echo "1 - Filesystem"
echo "2 - TWSD"
echo "3 - Annexes"
echo "* - FlashCALL"
echo "9 - Sortie"
read CHOIX
        case $CHOIX in
                1) cat /home/eogo0830/bin/scripts/Consignes/FileSystem;;
                2) cat /home/eogo0830/bin/scripts/Consignes/TWSD;;
                3) cat /home/eogo0830/bin/scripts/Consignes/Annexes;;
                *) clear
                   echo "Mode FlashCALL"
                   cat /home/eogo0830/bin/scripts/Consignes/FileSystem | grep -v "#";;
                9) exit;;
        esac
