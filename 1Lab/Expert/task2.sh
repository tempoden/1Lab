#!/bin/bash
rm task2.txt
wget http://factorized.net/crusoe.txt
mv crusoe.txt task2.txt
echo "FILE CRUSOE.TXT WAS RENAMED TO task2.txt"
sed -i "s/Friday/Saturday/g" task2.txt
echo "ANSWER IS IN task2.txt"
