#!/bin/bash

##Variáveis de nome
fileName=".Raftel"
fileRightName=".LaughTale"

##Menssagens.
pergaminho="\nO CAMINHO FINAL: \n'Meu tesouro? Se você o quiser, terá que encontrá-lo primeiro\! \nEu escondi tudo aquilo que eu valorizo em uma ilha chamada... Raftel\! \nVocês querem meu tesouro? Eu deixei tudo ali\!' -Gol D. Roger. \n\nDICA: \nUse o comando ' find $HOME -ls -iname \"$fileName\" 2>/dev/null | grep -i \"$fileName\" ' aonde tudo começou.\n"

toFileName="\nParabéns por chegar até aqui\! Você é o próprio One Piece, \nMas se desejar continuar a jornada, então saiba que, todos me chaman de Raftel, \nmas na verdade meu nome é \"$fileRightName\" \nMe procure na RAIZ, quando eu ME ILUMINAR use o canhão CTRL+C\n... então o caminho será mostrado para você.\n"

toFileRightName="\nOi Luffy, sou eu Nami. Eu roubei o ouro.\n          ### FIM. ###\n"

##Local de nascimento
luffy="$HOME/Luffy"
sanji="$HOME/.Sanji"
zoro="/tmp/Zoro"

raftel="$HOME/Documentos/raftel"
laughTale="/tmp/systemd-private-0n3P1ec331082023k"
docCity="$HOME/Documentos"

##Fala deles
luffySays="\nLuffy diz: \nPreciso encontrar Zoro e Sanji, para irmos até a ilha do sorriso! \nPelo que sei deles: Tenho certeza que Zoro esta perdido. \nJá o Sanji, como é mais prudente, deve esta escondido em algum lugar...\n"
luffyThink="\nLuffy pensa: \nCompensa mais achar o Sanji primeiro...\n"
luffyAct="\nLUFFY GRITA: \nOOOII, SANJI\! CADÊ VOCÊ\!? \nESTOU COM FOME\! \nQUERO CARNEE\! \n"
luffyTip="\nDICA DE LUFFY: \nSanji deve esta por perto, como eu nasci na HOME, talvez ele nasceu no mesmo lugar. \n\nUse 'ls -la' para ver quem está escondido. \n"

sanjiSays="\nSANJI FALA: \nNão temos carne. Precisamos encontrar o Zoro, aquele cabeça de mato se perde toda hora\! \n"
sanjiThink="\nSANJI PENSA: \nAquele cabeça de mato deve estar em algum lugar incomun. \nNão é possível que ele entrou em algum lugar privado sem ter feito barulho, \npois está muito quieto ainda... \n"
sanjiAct="\nSANJI ORDENA: \nvamos procurar nos locais públicos\! \n"
sanjiTip="\nDICA DE SANJI: \nOs locais públicos podem ser vistos com 'ls -l' \nTudo que estiver com a marca 'drwxrwxrwt' ou 'drwxrwxrwx'... é um local extremamente público \nMelhor começar a procura desde a RAIZ desse mar. \n"

zoroSays="\nZORO DIZ: \nEi vocês estavam perdidos?\!\n"
zoroThink="\nZORO PENSA: \nUma cachaça agora seria uma boa...\n"
zoroAct="\nZORO MOSTRA: \nAchei uma coisa la na cidade dos 'Docs', tem algo estranho acontecendo...\n"
zoroTip="\nDICA DE ZORO: \nPegue o mapa.txt do zoro.\n"
zoroShow="\nVai para HOME e use o comando:\n find . -ls -iname \".raftel\" 2>/dev/null | grep \".raftel\" \n"
zoroShowOne="Você pode usar o comando finds para ajudar a achar alguma coisa de forma mais simples. Vá para HOME e use o comando finds .raftel"

info(){
  local myinfo="$1"

  whiptail --title "Informe" --msgbox \
  "$myinfo" \
  15 50 --ok-button "Ok"
}

    createDir() {
    local path="$1"
    if [ -e "$path" ]; then
      chmod -R 777 "$path" 2>/dev/null
      rm -rf "$path"
      mkdir $path 2>/dev/null
      echo "..."
    else
      mkdir $path 2>/dev/null
      echo "Ok."
    fi
  }

removeAll(){
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
}

toBash(){
  cp $HOME/.bashrc $HOME/.bashrc-backup
  cat << 'EOF' >> "$HOME/.bashrc"
  finds(){
    find . -ls -iname "*$1" 2>/dev/null | grep -i --color=auto "$1"
  }

  sos(){
    if command -v whiptail >/dev/null 2>&1; then
      whiptail --title "Dicas" --msgbox \
  "📌 Dicas rápidas:
  
  📂 Personagens = pastas
  📄 Falas = arquivos de texto
  📄 ver = comando ls
  
  💻 Comandos úteis:
  cd /     → vai para a RAIZ
  cd ~     → volta para HOME
  cat arquivo.txt → lê arquivo
  pwd → mostra o local que você está
  
  💻 Comando de direção:
  logpose → Sua bússola no GoingTermi
  " \
      20 60
    else
      echo -e "\n📌 Dicas rápidas:\n"
      echo "📂 Personagens = pastas"
      echo "📄 Falas = arquivos de texto"
      echo
      echo "💻 Comandos úteis:"
      echo "cd /     → vai para a RAIZ"
      echo "cd ~     → volta para HOME"
      echo "cat arquivo.txt → lê arquivo"
      echo "pwd → mostra o local que você está"
      echo
      echo "💻 Comando de direção:"
      echo "logpose → Sua bússola no GoingTermi"
      echo
    fi
  }
  
  logpose(){
    local mensagem="🧭 LogPose - Sua bússola no GoingTermi!
  
  📌 Objetivo:
  Encontre o personagem **Luffy**.
  Ele é um diretório que está localizado na sua **HOME**.
  
  ➡️ Passo a passo:
  1. Vá para a HOME do terminal.
  2. Entre no diretório **Luffy**.
  3. Descubra a mensagem que o capitão vai falar!
  
  💡 Dica:
  Se não lembrar os comandos básicos, digite **sos** no terminal."
  
    if command -v whiptail >/dev/null 2>&1; then
      whiptail --title "GoingTermi - LogPose" --msgbox "$mensagem" 20 70
    else
      echo -e "\n$mensagem\n"
    fi
  }
  
  
EOF
}


main(){  
  if ! [[ -d "$luffy" && -d "$zoro" ]]; then
    toBash
  else
    echo "Jogo em andamento!"
  fi

  createDir $luffy
  createDir $sanji
  createDir $zoro
  createDir $raftel
  createDir $laughTale

  echo -e $luffySays >> $luffy/1.txt
  echo -e $luffyThink >> $luffy/2.txt
  echo -e $luffyAct >> $luffy/3.txt
  echo -e $luffyTip >> $luffy/4.txt

  echo -e $sanjiSays >> $sanji/1.txt
  echo -e $sanjiThink >> $sanji/2.txt
  echo -e $sanjiAct >> $sanji/3.txt
  echo -e $sanjiTip >> $sanji/4.txt

  echo -e $zoroSays >> $zoro/1.txt
  echo -e $zoroThink >> $zoro/2.txt
  echo -e $zoroAct >> $zoro/3.txt
  echo -e $zoroTip >> $zoro/4.txt
  echo -e $zoroShow >> $zoro/5.txt

  echo -e $zoroShow >> $zoro/mapa.txt
  echo -e $toFileName >> $raftel/$fileName.txt
  echo -e $toFileRightName >> $laughTale/$fileRightName.txt

  chmod 555 $laughTale
  chmod 555 $raftel
  chmod 500 $luffy
  chmod 100 $sanji
  chmod 100 $zoro
}

# Verifica se whiptail existe
if command -v whiptail >/dev/null 2>&1; then

  tela=1 # Começa na tela 1

  while true; do
    case $tela in
      1) # === TELA 1 ===
        if whiptail --title "One Piece Bash Game" --yesno \
"Bem-vindo ao One Piece Bash Game


Seu objetivo é encontrar os personagens:
[Luffy, Zoro, Sanji e *Anonymo*]
O jogo começa no diretório HOME (~).
A RAIZ do sistema é representada por /." \
          20 50 --yes-button "Avançar" --no-button "Sair"
        then
          tela=2
        else
          removeAll
          info ">>> Jogo Encerrado."
          echo ">>> Jogo encerrado."
          break
          exit 0
        fi
      ;;
      2) # === TELA 2 ===
        if whiptail --title "Dicas" --yesno \
          "Dicas rápidas:

          cd /   → vai para a RAIZ
          cd ~   → volta para HOME
          cd x   → entra na pasta x
          cd ..  → volta uma pasta para trás

          Personagens = pastas
          Falas = arquivos de texto" \
          15 50 --yes-button "Avançar" --no-button "Voltar"
        then
          tela=3
        else
          tela=1
        fi
      ;;
      3) # === TELA 3 ===
        if whiptail --title "Comandos" --yesno \
          "Comandos para jogar:

          sos      → ajuda
          ls       → lista pastas e arquivos
          cd X     → entra na pasta X
          cd ..    → volta uma pasta
          cat ARQ  → lê a fala" \
          15 50 --yes-button "Iniciar Jogo" --no-button "Voltar"
        then
          main
          source "$HOME/.bashrc"
          echo ">>> Jogo iniciado!"
          break
          exit 0
        else
          tela=2
        fi
      ;;
    esac
  done

else
  # =======================
  # Fallback com echo
  # =======================
  echo -e "
=======================================================
|         Bem-vindo ao One Piece Bash Game,           |
|       esse jogo foi feito para você praticar        |
|         seus conhecimentos no terminal.             |
|                                                     |
|Existem 4 personagens do mundo de One Piece          |
|que nasceram nesse mar, no qual chamamos de TERMINAL.|
|Os personagens são:                                  |
|[Luffy, Zoro, Sanji, *Anonymo*]                      |
|                                                     |
|Na busca do grande tesouro chamado One Piece, o bando|
|se dispersa... Seu objetivo como jogador é encontrar |
|todos eles e ir em busca do One Piece!               |
|                                                     |
|O jogo inicia-se no diretório do usuário.            |
|A ilha que chamamos de HOME.                         |
|                                                     |
|Quando eu me referir à RAIZ, estou falando           |
|do primeiro diretório, a primeira ilha               |
|conhecida por /                                      |
=======================================================
"

  echo -e "
=======================================================
|                                                     |
|                   ### DICA ###                      |
|             Ir direto para RAIZ: cd /               |
|             Ir direto para HOME: cd \$HOME           |
|                                                     |
|     Os personagens são representados por pastas;    |
| As falas são arquivos de texto dentro do personagem;|
|                                                     |
=======================================================
"

  echo -e "
=======================================================
|                                                     |
|            ### COMANDOS PARA JOGAR ###              |
|                                                     |
|  ls = vê as ilhas/diretórios e arquivos...          |
|  cd = navega de uma ilha/diretório para outra       |
|  cd .. = volta uma ilha/diretório para trás         |
|  cat = ouve as falas dos personagens                |
|                                                     |
=======================================================
"
fi

# cd