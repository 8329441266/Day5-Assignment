#! /bin/bash
echo "Enter a Number"
read number
case $number in
        1)
      echo "Unit";;
        10)
       echo "Ten" ;;
        100)
     echo "Hundred";;
       1000)
      echo "Thousand";;
	*)
	echo "not valid input";;
esac
