#!/bin/bash

clear
echo "WELCOME TO THE ITS LAST CHAT!"

chatlog='chat.log'

nc -lubk 4444 | tee -a $chatlog
