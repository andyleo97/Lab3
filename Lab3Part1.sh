#!/bin/bash

while true; do

if [[ $# -gt 1 ]]; then
  printf "Only pass 1 file in please\n"
  exit 127
elif [[ $# -lt 1 ]]; then
   printf "You need to Pass a file in!\n"
   exit 127
fi

if [[ ! -e "$1"  || ! -f "$1"  ]]; then
    printf "Please pass in a valid file\n"
    exit 127
fi

printf "\n Menu\n"
printf " ===  \n"
printf "1) Shell sort\n"
printf "2) Perl sort\n"
printf "3) Perl search\n"
printf "4) Exit\n"




read input

if [[ $input -eq 1 ]]; then
 printf "worked\n"
elif [[ $input -eq 2 ]]; then
  perl "Lab3Perl1.pl"

elif [[ $input -eq 3 ]]; then
  perl "Lab3Perl2.pl"

elif [[ $input -eq 4 ]]; then
  exit 127

else
  printf "You can only a number from 1 - 4 try again!\n"
fi

done

# [ $# -ge 1 -e -f "$1" ] && input="$1" || input="-"
# cat $input
#
# printf "$input"
