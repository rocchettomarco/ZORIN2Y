#!/bin/bash

clear
echo "WELCOME TO THE ITS LAST CHAT!"

chatlog='chat.log'

nc -luk 4444 | tee -a $chatlog
