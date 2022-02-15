#!/bin/bash

ARGS=2
E_BADARGS=65

if [ $# -ne "$ARGS" ]
then
      echo "Порядок использования: `basename $0` первое-число второе-число"
        exit $E_BADARGS
fi
# ------------------------------------------------------


gcd ()
{
    dividend=$1
    divisor=$2    
    remainder=1
    until [ "$remainder" -eq 0 ]
    do
        let "remainder = $dividend % $divisor"
        dividend=$divisor
        divisor=$remainder
    done
}

gcd $1 $2

echo; echo "НОД чисел $1 и $2 = $dividend"; echo
