#!/bin/bash
data="$(date)"
echo $data

for ((i=1; i<=$2; i++)); do
      fn="log$i.txt"
      echo -e "Nazwa pliku to : $fn\nNazwa skryptu to: $0\nData: $(date)" > $fn
    done