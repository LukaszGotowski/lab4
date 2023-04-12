#!/bin/bash
if [[ $1 == "--date"]]; then
data="$(date)"
echo $data

elif [[ $1 == "--logs"]]; then
for ((i=1; i<=100; i++)); do
      fn="log$i.txt"
      echo -e "Nazwa pliku to : $fn\nNazwa skryptu to: $0\nData: $(date)" > $fn
    done

for ((i=1; i<=$liczba; i++)); do
      fn="log$i.txt"
      echo -e "Nazwa pliku to : $fn\nNazwa skryptu to: $0\nData: $(date)" > $fn
    done

elif [[ $1 == "--help"]]; then
echo "Opcje : "
echo " --date   Wyświetla aktualną datę"
echo " --logs   Tworzy x plików logx.txt, [nazwa pliku --logs x], x - liczba plików"