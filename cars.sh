#! /bin/bash
#cars.sh
#Daesik Kwon

quit="false"

while [ "$quit" == "false" ]
do

	echo "type the number 1 to enter a new car."
	echo "type the number 2 to display the list of cars"
	echo "type the number 3 to quit and exit the program."
	read NUM

	case $NUM in
	"1")
	echo "Enter the year of issed car: "
	read year
	echo "Enter the company that did make the car: "
	read make
	echo "Enter the model of the car: "
	read model
	
	echo "$year:$make:$model" >> My_old_cars
	;;
	
	"2")
		 sort My_old_cars
	;;

	"3")	
	quit=true
	echo "Goodbye"
	;;

	*)
	;;
	esac
done
			
