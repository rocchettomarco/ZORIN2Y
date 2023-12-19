#!/bin/bash

clear
echo "WELCOME TO THE ITS LAST CHAT!"

chatlog='chat.log'

while [[ true ]]
do
	nc -lubk 4444 | tee -a $chatlog
	echo "debug"
done
