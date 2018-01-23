#!/bin/sh

declare arr=($@)
size=$#
echo "Before loop: " ${arr[*]}

while (($size > 0))
do
	i=0
	while (($i < $size))
	do
		#echo -n ${arr[i]}
		if [ "${arr[$i]}" \> "${arr[$((i + 1))]}" ]
		then
			num="${arr[$i]}"
			arr[$i]="${arr[$((i + 1))]}"
			arr[$((i + 1))]="$num"
		fi
		((++i))
	done
	
	((--size))
done
echo "After loop: " ${arr[*]}
