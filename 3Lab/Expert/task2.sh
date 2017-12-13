#!/bin/bash
rm task2.txt
wget  http://factorized.net/patterns.txt
echo "==========ONLY NUMBERS===========" >> task2.txt
egrep -w "\b[0-9]*\b" patterns.txt >> task2.txt
echo "==========ONLY LETTERS===========" >> task2.txt
egrep -w "\b[A-Za-z]*\b" patterns.txt >> task2.txt
echo "RESULT IS IN task2.txt"
rm patterns.txt
