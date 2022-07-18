#!/bin/bash

START=1
lngth=$(cat IPS_DBS.txt | wc -l)

for ((i=$START; i<=$lngth; i++))
do 
   ips=$(cat IPS_DBS.txt | head "-$i" | tail -1)
   echo "Changing  Password for the IP: "$ips
   mysql -h $ips -upower -p -e "show databases"
done

