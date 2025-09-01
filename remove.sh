#!/bin/bash

##Variáveis de nome
fileName=".Raftel"
fileRightName=".LaughTale"

##Local de nascimento
luffy="$HOME/Luffy"
sanji="$HOME/.Sanji"
zoro="/tmp/Zoro"
# onePiece='/root/.kkkk'
raftel="$HOME/Documentos/raftel"
laughTale="/tmp/systemd-private-0n3P1ec331082023k"

chmod 777 $laughTale
chmod 777 $raftel
chmod 777 $luffy
chmod 777 $sanji
chmod 777 $zoro

rm -rf $luffy
rm -rf $sanji
rm -rf $zoro
rm -rf $raftel
rm -rf $laughTale

if [ -e "$HOME/.bashrc-backup" ]; then
  rm $HOME/.bashrc
  mv $HOME/.bashrc-backup $HOME/.bashrc
  source $HOME/.bashrc
fi
