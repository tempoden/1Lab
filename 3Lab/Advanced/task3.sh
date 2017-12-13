#!/bin/bash
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
echo $p
