#!/bin/bash
netstat -antup|grep SYN_RECV|awk '{print $5}'|awk -F: '{print $1}'|sort|uniq -c>/opt/tmp
exec</opt/tmp
while read line
do
  count=`echo $line|awk '{print $1}'`
  ip=`echo $line |awk '{print $2}'`
  if [ $count -gt 128 ]
  then iptables -I INPUT -s $ip -j DROP
  fi
done
