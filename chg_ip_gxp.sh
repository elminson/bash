#!/bin/bash
for i in {99..200}  #ip range
do
(
echo open 192.168.1.$i   #Orinal range
sleep 2
echo "admin"
sleep 1
echo "config"
sleep 1
val=$(($i + 1))
echo "set ip 192.168.15."$val      #New Range
sleep 1
echo "commit"
sleep 1
echo "exit"
sleep 1
echo "reboot"
sleep 1
) | telnet
done
