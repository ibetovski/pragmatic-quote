#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )";

IFS=$'\n' read -rd '' -a y <<<"`cat ${SCRIPT_DIR}/pragmatic-quotes.txt`"
NUMBER_OF_QUOTES=`expr ${#y[@]} / 2`
RANDOM_NUMBER=$[($RANDOM % $NUMBER_OF_QUOTES) + 1]

# if the random number is not even
if [ $(($RANDOM_NUMBER%2)) -ne 0 ]; then
  RANDOM_NUMBER=`expr $RANDOM_NUMBER - 1`;
fi

printf "\n\n\n\n\n\n\n"
printf "\033[1m > ${y[$RANDOM_NUMBER]}\033[0m"
printf "\n${y[$RANDOM_NUMBER+1]}\n"
printf "\n"
printf "\033[3m ~ The Pragmatic Programmer ~ \033[0m"
printf "\n\n\n\n\n\n"