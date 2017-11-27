#!/bin/bash
wget http://factorized.net/crusoe.txt
grep "Friday" crusoe.txt | wc -l
rm crusoe.txt
