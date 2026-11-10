#!/bin/bash
# multiply.sh - prints a times table
read -p "Which table? " n
for i in {1..10}; do
    echo "$n x $i = $((n * i))"
done
