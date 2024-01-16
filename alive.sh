#!/bin/bash
ip=$(hostname -I | cut -d " " -f 1)
brd=$(ip a | grep $ip | cut -d " " -f 8)

echo $CHATPIPE
alive="43RRfF67" 
i=0
while [[ true ]]
do
	read usr < $CHATPIPE
	echo "alive:"$usr
       	echo "$alive $usr $ip" | nc -q 0 -buN $brd 4444
	i=$(( $i+1 ))
	sleep 3
done
