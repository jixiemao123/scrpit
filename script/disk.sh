#!/usr/bin/bash
# disk use
#v1
mail_user=root
disk_use=`df -Th | grep "/$" |awk '{print $(NF-1)}' | awk -F '%' '{print $1}'`

if [ "$disk_use" -ge 80 ];then
     echo "`date +%F-%H-%M` disk: ${disk_use}%" | mail -s "disk warning" $mail_user
fi
