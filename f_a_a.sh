#!/bin/bash

# Funkcja do zamiany pojedynczej litery
replace_letter() {
    case "$1" in
        a) echo -n "i";;
        b) echo -n "t";;
        c) echo -n "k";;
        d) echo -n "n";;
        e) echo -n "d";;
        f) echo -n "h";;
        g) echo -n "r";;
        h) echo -n "l";;
        i) echo -n "w";;
        j) echo -n "y";;
        k) echo -n "p";;
        l) echo -n "f";;
        m) echo -n "u";;
        n) echo -n "r";;
        o) echo -n "s";;
        p) echo -n "h";;
        r) echo -n "e";;
        s) echo -n "s";;
        t) echo -n "m";;
        w) echo -n "z";;
        u) echo -n "a";;
        y) echo -n "j";;
        z) echo -n "c";;
        *) echo -n "$1";;
    esac
}

# Funkcja do zamiany całego słowa
replace_word() {
    local word="$1"
    local result=""
    for ((i=0; i<${#word}; i++)); do
        result="${result}$(replace_letter "${word:$i:1}")"
    done
    echo "$result"
}

# Główna część skryptu
if [ $# -eq 0 ]; then
    echo "Użycie: $0 [słowo1] [słowo2] [...]"
    exit 1
fi

for word in "$@"; do
    replaced_word=$(replace_word "$word")
    echo "$word -> $replaced_word"
done

