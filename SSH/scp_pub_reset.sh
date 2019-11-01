#!/bin/bash
#Correctif erreur script scp_pub.sh
#Reset de la cle publique sur serveur cible

################################
# DEFINITION DES VARIABLES
SRV_PUBKEY_OK="$HOME/.ssh/SRV_pubkey_OK"
AUTHORIZED_KEYS="$HOME/.ssh/authorized_keys"
################################
# ENVOI DE LA CLE
echo "$1" >> $SRV_PUBKEY_OK
echo "ssh-copy-id -f $1 &>>/dev/null"
ssh-copy-id -f $1 &>>/dev/null
