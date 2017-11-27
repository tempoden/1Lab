#!/bin/bash
wget http://factorized.net/crusoe.txt 
awk 'BEGIN{ m=0;}\
	 {for(i=0;i<NF;i++)\
		{if($i~/Friday/) m++;\
	}}\
	END{print(m)}' crusoe.txt
rm crusoe.txt
