#!/bin/bash
#Вариант задания на подсчёт суммы столбиков чисел из файла input_v1.txt
#Verson of task No.3, where we need to count sum of each column from 
#input_v1.txt
awk 	'BEGIN{ p=0;z=0 }\
	{\
		p+=$1;\
		z+=$2;\
	}\
	END{print (p,z)}' input_v1.txt
