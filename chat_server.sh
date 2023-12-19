#!/bin/bash

clear
echo "WELCOME TO THE ITS LAST CHAT!"

chatlog='chat.log'

while [[ true ]]
do
	nc -l -b 4444 | tee -a $chatlog
	#equivalent to:
	# nc -l 4444 >> $chatlog
done
