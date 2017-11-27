#!/bin/bash
wget http://factorized.net/crusoe.txt
if grep "Friday" crusoe.txt;
then
	echo "YaY! Friday !"
else
	echo "no friday:("
fi
