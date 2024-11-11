#!/bin/bash

# send the command to the screen
screen -S mcs -X stuff "save-all\n"
screen -S mcs -X stuff "stop\n"
screen -S mcs -X stuff "./run.sh\n"

cd /mnt/ebs/mcs/bcs
rm -rf neodata
cp -r ../neodata/ .
git add .
git commit -m "Auto commit"
git push
