#!/bin/bash

cdef='\e[0m' #color default
cred='\e[0;31m' #color red
cgreen='\e[0;32m' #color green
usr=$(whoami)
chatlog='chat.log'

echo "WELCOME TO LAST CHAT!"

helpmex="\nCOMMANDS\n\tusername: change username\n\tsend: send message\n\texit: quit chat\n\thelp: print this message\n"
echo -e $helpmex

while [[ true ]]
do
	echo -n "> "
	read i

	if [[ $i == "help" ]]
	then
		echo "[$(date +%r)] $usr: help"
		echo -e $helpmex
	fi

	if [[ $i == "username" ]]
	then
		oldusr=$usr
		echo -ne "${cred}new username: $cdef"
		read usr
		echo "[$(date +%r)] new username: $oldusr -> $usr" | nc -q 0 -uN 0.0.0.0 4444
	fi

	if [[ $i == "send" ]]
	then
		echo -ne "${cgreen}message: $cdef"
		read mex
		echo "[$(date +%r)] $usr: $mex" | nc -q 0 -uN 0.0.0.0 4444
	fi

	if [[ $i == "exit" ]]
	then
		exit
	fi
done
