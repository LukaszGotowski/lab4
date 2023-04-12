#!/bin/bash
if [[ $d == "--date" || $d == "-d" ]]; then
    data="$(date)"
    echo $data

elif [[ $d == "--logs" || $d == "-l" ]]; then
    for ((i=1; i<=100; i++)); do
        fn="log$i.txt"
        echo -e "Nazwa pliku to : $fn\nNazwa skryptu to: $0\nData: $(date)" > $fn
        done

    for ((i=1; i<=$liczba; i++)); do
        fn="log$i.txt"
        echo -e "Nazwa pliku to : $fn\nNazwa skryptu to: $0\nData: $(date)" > $fn
        done

elif [[ $d == "--help" || $d == "-h" ]]; then
    echo "Opcje : "
    echo " -d  --date   Wyświetla aktualną datę"
    echo " -h  --help   Wyświetla pomoc"
    echo " -l  --logs   Tworzy x plików logx.txt, [nazwa pliku --logs x], x - liczba plików"

elif [[ $d == "--init" ]]; then
    git clone https://github.com/LukaszGotowski/lab4.git
    export PATH="$PATH:$(pwd)/lab4" 