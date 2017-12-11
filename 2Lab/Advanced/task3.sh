#!/bin/bash
gcc -o myprog myprog.c
gcc -o ../dirForTask3/myprog myprog.c
echo "||Result from this dir||"
./myprog
echo "||Result from another dir||"
../dirForTask3/myprog
