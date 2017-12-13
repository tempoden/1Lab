#!/bin/bash
rm task1.txt
wget http://factorized.net/crusoe.txt
echo "WORD ENDS WITH 'Z'" >> task1.txt
egrep -o "\bz\w*\b" crusoe.txt >> task1.txt 
echo "16 LETTERS IN WORD" >> task1.txt
egrep -o "\b\w{16}\b" crusoe.txt >> task1.txt
echo "WORD STARTS WITH 'A' AND ENDS WITH 'C'" >> task1.txt
egrep -o "\ba\w*c\b" crusoe.txt >> task1.txt
echo "WORDS STARTS WITH 'AB' AND 3rd LETTER ISN'T 'C'" >> task1.txt
egrep -o "\bab[^o]\w*\b" crusoe.txt >> task1.txt
echo "RESULT IS IN task1.txt"
rm crusoe.txt
