
#!/bin/bash 

read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c

First=`echo $a $b $c | awk '{t=$1+($2*$3)} {print t}'`
Second=`echo $a $b $c | awk '{t=$1%($2+$3)} {print t}'`
Third=`echo $a $b $c | awk '{t=$3+($1/$2)} {print t}'`
Fourth=`echo $a $b $c | awk '{t=($1*$2)+$3} {print t}'`

echo "Result of 1st expression: " $First
echo "Result of 2nd expression: " $Second
echo "Result of 3rd expression: " $Third
echo "Result of 4th expression: " $Fourth

min1=`echo $First $Second | awk '{if ($1<$2) print $1; else print $2}'`
min2=`echo $min1 $Third | awk '{if ($1<$2) print $1; else print $2}'`
min3=`echo $min2 $Fourth | awk '{if ($1<$2) print $1; else print $2}'`

max1=`echo $first $Second | awk '{if ($1>$2) print $1; else print $2}'`
max2=`echo $max1 $Third | awk '{if ($1>$2) print $1; else print $2}'`
max3=`echo $max2 $Fourth | awk '{if ($1>$2) print $1; else print $2}'`

echo "Minimum is: " $min
echo "Maximum is: " $max 

fi
