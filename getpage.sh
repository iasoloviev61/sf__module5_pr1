#!/bin/bash
if [ -d "src" ] 
then
    echo "Directory src exists." 
else
    echo "Error: Directory src does not exists."
    mkdir src
fi
rm -rf src/*
LANG=( 'br' 'cn' 'cz' 'da' 'de' 'es' 'fr' 'hu' 'it' 'jp' 'nl' 'pl' 'ru' 'tw' )
LINK="https://www.chiark.greenend.org.uk/~sgtatham/bugs-"
cd src
curl -O https://www.chiark.greenend.org.uk/~sgtatham/bugs.html
#wget -P src https://www.chiark.greenend.org.uk/~sgtatham/bugs.html

if [ -z "$1" ]; then
    for i in ${LANG[@]}
        do
          echo $LINK$i".html"
#          wget -P src $LINK$i".html"
	   curl -O $LINK$i".html"
    done
else
#   wget -P src $LINK$1".html"
    curl -O $LINK$1".html"
fi
cp bugs.html index.html
