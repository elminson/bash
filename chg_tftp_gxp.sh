#!/bin/bash
for i in {164..164}
do
(
echo open 192.168.1.$i
sleep 2
echo "admin"
sleep 1
echo "upgrade"
sleep 1
echo "set TFTP"
sleep 1
echo "set 192.168.1.149"
echo "commit"
sleep 1
echo "exit"
sleep 1
echo "reboot"
sleep 1
) | telnet
done
