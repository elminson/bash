bash
====

Change multiples phones ip of Granstream ip phones remotly via telnet 

create file chg_ip_gxp.sh
root@sercer#vim chg_ip_gxp.sh
Add this
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

Change permision 
root@sercer#chmod 777 chg_ip_gxp.sh
Run
root@sercer#./ chg_ip_gxp.sh
Will take about 4 or 5 seconds per phone

