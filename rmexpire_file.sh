#!/bin/bash
#date=date
#touch $date.log
#head -3 /etc/passwd | xargs echo > $date.log
#rm -- "$(ls -rt | head -n 1)"

cut -d":" -f 1,3 /etc/passwd | xargs echo
#find . -mtime -2 -exec rm –rf {} \;
#awk -F ":" '{print $1}' /etc/passwd
#head -5 /etc/passwd | tail +5



