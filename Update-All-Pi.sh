#!/bin/sh

for num in `seq 54 56`
do
       clear
       host=192.168.195.${num}
       PASS=GreatIris2001@

       



echo ""
echo "$(date) >> RPi Package Updates Started on "${host}""
echo "-------------------------------------------"
DEBIAN_FRONTEND=noninteractive sshpass -p ${PASS} ssh -l root -oStrictHostKeyChecking=accept-new "${host}" sudo apt-get update -y
echo "-------------------------------------------"
echo "$(date) >> Package Updates Complete"
echo ""

done