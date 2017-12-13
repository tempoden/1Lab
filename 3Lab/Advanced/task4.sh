#!/bin/bash
if [[ $3 == "" ]]
then
case $ARITHMETIC_OP in
        add)
                let "p = $1 + $2"
        ;;
        sub)
                let "p = $1 - $2"
        ;;
        mul)
                let "p = $1 * $2"
        ;;
        div)
                let "p = $1 / $2"
        ;;
esac
else
case $3 in
        add)
                let "p = $1 + $2"
        ;;
        sub)
                let "p = $1 - $2"
        ;;
        mul)
                let "p = $1 * $2"
        ;;
        div)
                let "p = $1 / $2"
        ;;
esac
fi
echo $p
