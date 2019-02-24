#!/bin/bash

add()
{
  return $(($1+$2));


}	

subtrat (){
 
  return $(($1- $2));

}

#  $# use to chech the number of arguments
if [ $# -ne 3 ] && [ $# -ne 0 ]

then 

echo "Wrong number of parameters. Exiting ..."

exit 1

fi

if [ $# -eq 3 ]
then

operation=$2
num1=$1
num2=$3


if [ "$operation" = "+" ]
then
add $num1 $num2

else

subtrat $num1 $num2

fi

echo " The anser is : " $?

sleep 3
clear

else
	while true
do 
echo "Menu 1"
echo " C) Calculation X to Exit "

read -p "C for calculation or  X for exit : " choice 
if [ "$choice" = "X" ] || [ "$choice" = "x" ] 
then
echo "Thank you!"
exit 0
fi


read -p "please enter an integer number1 " num1

if [ "$num1" = "X" ] || [ "$num1" = "x" ]
then
echo " Thank you. You have selected exit option in num1 "
exit 0
fi




echo "Menu 3, Add subtract or Exit "

read -p "Please enter opertation ' + ' or ' - ' " operation

if [ "$operation" != "+" ] && [ "$operation" != "-" ] 
then
echo "Thank you !! "
exit 0
fi

read -p "please enter an iteger number2 " num2

if [ "$num2" = "X" ] || [ "$num2" = "x" ]
then
echo " Thank you. You have selected exit option in num2"
exit 0
fi

if [ "$operation" = "+" ]
then
add $num1 $num2
else
subtrat $num1 $num2
fi

echo "The answer is : " $?

sleep 3
clear

done
fi



   
