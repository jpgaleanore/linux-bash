echo "please enter a number greater than 100"

read num

while [ $num -le 100 ]
	
do
	echo "$num is Not greater than 100."
	echo "please enter a number greater than 100."
	read num

done

echo "finally $num is greater than 100"
