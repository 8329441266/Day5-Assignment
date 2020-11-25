 /bin/bash

read -p "Enter the year:" year


if [[ $(($year%4)) -eq 0 || ($(($year%100)) -ne 0  && $(($year%400)) -eq 0) ]]

then
        echo " Is a Leap year"
else
        echo "Is a Not Leap year"
fi

