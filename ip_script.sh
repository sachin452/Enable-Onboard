#!/bin/bash
while :
do
	if ping -q -w 1 -c 1 192.168.0.254 >/dev/null; then
		ip route del default via 192.168.0.200 &
		echo "OK" >> ip_log.txt &
		break
	else
		echo "Not OK" >> ip_log.txt  
fi
done
