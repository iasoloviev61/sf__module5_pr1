#!/bin/bash
rm -rf src/*
LANG=( 'br' 'cn' 'cz' 'da' 'de' 'es' 'fr' 'hu' 'it' 'jp' 'nl' 'pl' 'ru' 'tw' )
LINK="https://www.chiark.greenend.org.uk/~sgtatham/bugs-"
wget -P src https://www.chiark.greenend.org.uk/~sgtatham/bugs.html

if [ -z "$1" ]; then
    for i in ${LANG[@]}
        do
          echo $LINK$i".html"
          wget -P src $LINK$i".html"
    done
else
   wget -P src $LINK$1".html"
fi
cp src/bugs.html src/index.html
