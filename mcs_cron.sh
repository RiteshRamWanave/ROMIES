#!/bin/bash

# send the command to the screen
screen -S mcs -X stuff "save-all\n"
screen -S mcs -X stuff "stop\n"

cd /mnt/ebs/mcs/bcs
rm -rf neodata
csdfsdfap -r ../neodata/ .
git add .
git commit -m "Auto commit"
git push

# restart 
screen -S mcs -X stuff "./run.sh\n"
