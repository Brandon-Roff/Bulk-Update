#!/bin/sh

for num in `seq 54 56` #ip address
do
       clear
       host=192.168.1.${num} #set your subnet for example 192.168.0.${num}
       PASS=ENTER YOUR PASSWORD HERE

       



echo ""
echo "$(date) >> RPi Package Updates Started on "${host}""
echo "-------------------------------------------"
DEBIAN_FRONTEND=noninteractive sshpass -p ${PASS} ssh -l ENTER_USER -oStrictHostKeyChecking=accept-new "${host}" sudo apt-get update -y
echo "-------------------------------------------"
echo "$(date) >> Package Updates Complete"
echo ""

done
