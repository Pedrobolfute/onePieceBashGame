#!/bin/bash

##Variáveis de nome
fileName=".Raftel"
fileRightName=".LaughTale"

##Menssagens.
pergaminho="\nO CAMINHO FINAL: \n'Meu tesouro? Se você o quiser, terá que encontrá-lo primeiro\! \nEu escondi tudo aquilo que eu valorizo em uma ilha chamada... Raftel\! \nVocês querem meu tesouro? Eu deixei tudo ali\!' -Gol D. Roger. \n\nDICA: \nUse o comando ' find -ls -iname | grep \"$fileName\" ' aonde tudo começou.\n"

toFileName="\nParabéns por chegar até aqui\! Você é o próprio One Piece, \nMas se desejar continuar a jornada, então saiba que, todos me chaman de Raftel, \nmas na verdade meu nome é \"$fileRightName\" \nMe procure na RAIZ, quando eu me iluminar use o canhão CTRL+C\n"

toFileRightName="\nOi Luffy, sou eu Nami. Eu roubei o ouro.\nFIM.\n"

##Local de nascimento
luffy="$HOME/Luffy"
sanji="$HOME/.hiddenSanji"
zoro="/tmp/lostZoro"
# onePiece='/root/.kkkk'
raftel="$HOME/Documentos/raftel"
laughTale="/tmp/systemd-private-0n3P1ec331082023k"
docCity="$HOME/Documentos"

##Fala deles
luffySays="\nLuffy diz: \nPreciso encontrar Zoro e Sanji, para irmos até a ilha do sorriso! \nPelo que sei deles: Tenho certeza que Zoro esta perdido. \nJá o Sanji, como é mais prudente, deve esta escondido em algum lugar...\n"
luffyThink="\nLuffy pensa: \nCompensa mais achar o Sanji primeiro...\n"
luffyAct="\nLUFFY GRITA: \nOOOII, SANJI\! CADÊ VOCÊ\!? \nESTOU COM FOME\! \nQUERO CARNEE\!"
luffyTip="DICA DE LUFFY: \nSanji deve esta por perto, talvez ele nasceu no mesmo lugar que eu. \n\nUse 'ls -la' para ver quem está escondido."

sanjiSays="SANJI FALA: \nNão temos carne. Precisamos encontrar o Zoro, aquele cabeça de mato se perte toda hora\!"
sanjiThink="SANJI PENSA: \nAquele cabeça de mato deve estar em algum lugar incomun. \nNão é possível que ele entrou em algum lugar privado sem ter feito barulho, \npois está muito quieto ainda..."
sanjiAct="SANJI ORDENA: \nvamos procura nos locais públicos\!"
sanjiTip="DICA DE SANJI: \nOs locais públicos podem ser visto com 'ls -l' \nTudo que estiver com a marca 'drwxrwxrwt' ou 'drwxrwxrwx'... é um local extremamente público \nMelhor começar a procura desde a RAIZ desse mar."

zoroSays="ZORO DIZ: \nEi vocês estavam perdidos?\!"
zoroThink="ZORO PENSA: \nUma cachaça agora seria uma boa..."
zoroAct="ZORO MOSTRA: \nAchei uma coisa la na cidade dos 'Docs', tem algo estranho acontecendo..."
zoroTip="DICA DE ZORO: \nPegue o mapa.txt do zoro."
zoroShow="Na cidade de \"Documentos\" está aonde todos os \"PONTOS\" se encontram\! \n\n Você também pode usar o comando do barco rápido \"find -ls -iname \"$fileName\" | grep \"$fileName\" \" "

##Main
mkdir $luffy
mkdir $sanji
mkdir $zoro
mkdir $raftel
mkdir $laughTale
# mkdir $docCity

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