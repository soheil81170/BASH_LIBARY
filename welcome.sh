#!/bin/bash


date=$(date)
uptime=$(uptime)
sh -c 'echo "Welcome Ubuntu User $date $uptime " > /etc/motd'
echo "Welcome Ubuntu User $date $uptime "
