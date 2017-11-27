#!/bin/bash
#Вариант задания на вывод строки, содержащей больше всего чисел
# из файла input_v2.txt
#Verson of task No.3, where we need to print string, which
# contains the biggest amount of numbers from input_v2.txt
awk 	'BEGIN{ p=0;}\
	{\
	if(NF>p){\
	p=NF;\
	m=$0;\
	}\
	}\
	END{print(m)}' input_v2.txt
