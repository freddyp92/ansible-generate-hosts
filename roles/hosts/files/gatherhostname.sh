#!/bin/bash

NUMOFLINES=$(awk 'END {print NR}' /home/dadmin/GIT/ansible-generate-hosts/nmapips.txt)
COUNTER=1

while [ $COUNTER != $NUMOFLINES ]; do
	IP=$(sed -n "${COUNTER}p" /home/dadmin/GIT/ansible-generate-hosts/nmapips.txt)
	scp dadmin@${IP}:/etc/hostname /home/dadmin/GIT/ansible-generate-hosts
	sed -i /home/dadmin/GIT/ansible-generate-hosts/hostname -e 's/$/ ansible_host=IP ansible_port=22 ansible_user=dadmin/' 
	sed -i "s/IP/${IP}/g" /home/dadmin/GIT/ansible-generate-hosts/hostname
	mv /home/dadmin/GIT/ansible-generate-hosts/hostname /home/dadmin/GIT/ansible-generate-hosts/${IP}
	let COUNTER=COUNTER+1
done


