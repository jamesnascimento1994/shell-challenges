#!/bin/bash -e

# Challenge One: This code does not execute properly. Try to figure out why.
# Challenge Source: https://www.codewars.com/kata/50654ddff44f800200000004/train/shell

# Initial code
# a=$1
# b=$2
# echo $((a*0))

# Solution

# a=$1
# b=$2
# echo $((a*b))

# Challenge Two: If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).
# Challenge Source: https://www.codewars.com/kata/514b92a657cdc65150000006/shell

num=$1
sum=0

if (( num==0 ))
then
  echo 0
else
  for (( i=1 ; i<num ; ++i ))
  do
    if (( i%3==0 || i%5==0))
    then
      (( sum+=i ))
    fi
  done
fi

echo $sum