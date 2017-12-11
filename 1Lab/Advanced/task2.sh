#!/bin/bash
wget http://factorized.net/crusoe.txt
if cat crusoe.txt|grep "Friday";
then
	echo "YaY! Friday !"
else
	echo "no friday:("
fi
