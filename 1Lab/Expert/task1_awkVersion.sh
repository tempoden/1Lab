#!/bin/bash
wget http://factorized.net/crusoe.txt 
awk 'BEGIN{ m=0;}\
	 {for(i=1;i<=NF;i++)\
		{if(index($i,"Friday")!=0) m++;\
	}}\
	END{print(m)}' crusoe.txt
rm crusoe.txt
