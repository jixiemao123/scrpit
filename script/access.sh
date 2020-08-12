#!/bin/bash
logfile=/root/shell/ip_log.txt
access_log=/data/logs/nginx/http.access.log

#开始时间1分钟前
start_time=`date -d"1 minutes ago" +"%d/%b/%Y:%H:%M:%S"`

#结束时间
end_time=`date +"%d/%b/%Y:%H:%M:%S"`
#查询时间段内的访问日志，统计出访问IP及其访问次数
# 报错403
tac $access_log | grep "HTTP/1.1\" 403" | awk -v st="$start_time" -v et="$end_time" '{t=substr($4,RSTART+2,21);if(t>st && t<=et) {print $0}}' | awk '{print $1}' | sort | uniq -c | sort -nr > $logfile

#逐行读取
cat $logfile | while read LINE
do
    LINE=${LINE%%}  #去首尾空格
    #空格分割取次数和IP
    access_count=`echo $LINE | cut -d ' ' -f 1`
    access_ip=`echo $LINE | cut -d ' ' -f 2`

    if [[ $access_count -gt 1 ]];then
        #echo $access_count
        #echo $access_ip
        #钉钉报警
        content="【$access_ip】访问次数【$access_count】"
        curl 'https://oapi.dingtalk.com/robot/send?access_token=f3e244bb014079caa37872ee7c01649436dcb4ebb813e7ce890c1b1589d6c64b' -H 'Content-Type: application/json' -d '{"msgtype":"text","text":{"content":"监控报警：测试环境'$content'输出403，请修复"}}'
    fi
done
# 报错502
tac $access_log | grep "HTTP/1.1\" 502" | awk -v st="$start_time" -v et="$end_time" '{t=substr($4,RSTART+2,21);if(t>st && t<=et) {print $0}}' | awk '{print $1}' | sort | uniq -c | sort -nr > $logfile

#逐行读取
cat $logfile | while read LINE
do
    LINE=${LINE%%}  #去首尾空格
    #空格分割取次数和IP
    access_count=`echo $LINE | cut -d ' ' -f 1`
    access_ip=`echo $LINE | cut -d ' ' -f 2`

    if [[ $access_count -gt 1 ]];then
        #echo $access_count
        #echo $access_ip
        #钉钉报警
        content="【$access_ip】访问次数【$access_count】"
        curl 'https://oapi.dingtalk.com/robot/send?access_token=f3e244bb014079caa37872ee7c01649436dcb4ebb813e7ce890c1b1589d6c64b' -H 'Content-Type: application/json' -d '{"msgtype":"text","text":{"content":"监控报警：测试环境'$content'输出502，请修复"}}'
    fi
done
#报错500
tac $access_log | grep "HTTP/1.1\" 500" | awk -v st="$start_time" -v et="$end_time" '{t=substr($4,RSTART+2,21);if(t>st && t<=et) {print $0}}' | awk '{print $1}' | sort | uniq -c | sort -nr > $logfile

#逐行读取
cat $logfile | while read LINE
do
    LINE=${LINE%%}  #去首尾空格
    #空格分割取次数和IP
    access_count=`echo $LINE | cut -d ' ' -f 1`
    access_ip=`echo $LINE | cut -d ' ' -f 2`

    if [[ $access_count -gt 1 ]];then
        #echo $access_count
        #echo $access_ip
        #钉钉报警
        content="【$access_ip】访问次数【$access_count】"
        curl 'https://oapi.dingtalk.com/robot/send?access_token=f3e244bb014079caa37872ee7c01649436dcb4ebb813e7ce890c1b1589d6c64b' -H 'Content-Type: application/json' -d '{"msgtype":"text","text":{"content":"监控报警：测试环境'$content'输出500，请修复"}}'
    fi
done
# 报错404
tac $access_log | grep "HTTP/1.1\" 404" | awk -v st="$start_time" -v et="$end_time" '{t=substr($4,RSTART+2,21);if(t>st && t<=et) {print $0}}' | awk '{print $1}' | sort | uniq -c | sort -nr > $logfile

#逐行读取
cat $logfile | while read LINE
do
    LINE=${LINE%%}  #去首尾空格
    #空格分割取次数和IP
    access_count=`echo $LINE | cut -d ' ' -f 1`
    access_ip=`echo $LINE | cut -d ' ' -f 2`

    if [[ $access_count -gt 1 ]];then
        #echo $access_count
        #echo $access_ip
        #钉钉报警
        content="【$access_ip】访问次数【$access_count】"
        curl 'https://oapi.dingtalk.com/robot/send?access_token=f3e244bb014079caa37872ee7c01649436dcb4ebb813e7ce890c1b1589d6c64b' -H 'Content-Type: application/json' -d '{"msgtype":"text","text":{"content":"监控报警：测试环境'$content'输出404，请修复"}}'
    fi
done


