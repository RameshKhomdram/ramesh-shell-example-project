# This is the first script for calculator
# Enter two digit
# 5
# 6
# Enter the choice:
# 1. addition
# 2. subtraction
# 3. multiplication
# 4. division
# 3
# 5*6 = 30
#
# Approach
# 
# 1. Read the teo number
# 2. Input choice (1-addition, 2-subtraction, 3-multiplication 4-division)
# 3. if choice equals 1
#     calculate res = a + b
#    else if choice equals 2
#     calculate res = a - b
#    else if choice equals 3
#     calculate res = a * b
#    else if choice equals 4
#     calculate res = a / b
# 4. Output Result, res
#
# 5. echo =  to print the output
#
#
#
# !/bin/bash
 
# Take user Input
echo "Enter Two numbers : "
read a
read b
 
# Input type of operation
echo "Enter Choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch
 
# Switch Case to perform
# calculator operations
case $ch in
  1)res=`echo $a + $b | bc`
  ;;
  2)res=`echo $a - $b | bc`
  ;;
  3)res=`echo $a \* $b | bc`
  ;;
  4)res=`echo "scale=2; $a / $b" | bc`
  ;;
esac
echo "Result : $res"

