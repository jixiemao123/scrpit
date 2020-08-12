#!/bin/bash
. /etc/init.d/functions
url_list=(tw.valueq.com)

function chkurl(){
i=0
while [ $i -lt 2 ]
do
  curl https://${url_list[$i]} &>/dev/null
  if [ $? -eq 0 ]
  then
    action "${url_list[$i]}" /bin/true
  else
    action "${url_list[$i]}" /bin/false
  fi
  let i++
done
}

function main(){
while true
do chkurl
   sleep 3
done
}
main
