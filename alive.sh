#!/bin/bash

alive="43RRfF67" 

while [[ true ]]
do
	read info < $CHATPIPE
	ip=$(echo $info | cut -d " " -f 1)
	brd=$(echo $info | cut -d " " -f 2)
	usr=$(echo $info | cut -d " " -f 3)

       	echo "$alive $usr $ip" | nc -q 0 -buN $brd 4444
	sleep 3
done
