#!/bin/bash

removeAll(){

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

  safeRemove() {
    local path="$1"
    if [ -e "$path" ]; then
      chmod -R 777 "$path" 2>/dev/null
      rm -rf "$path"
    fi
  }

  safeRemove "$luffy"
  safeRemove "$sanji"
  safeRemove "$zoro"
  safeRemove "$raftel"
  safeRemove "$laughTale"

if [ -e "$HOME/.bashrc-backup" ]; then
  rm $HOME/.bashrc
  mv $HOME/.bashrc-backup $HOME/.bashrc
  source $HOME/.bashrc
fi

echo "Até a proxima!"
}

removeAll