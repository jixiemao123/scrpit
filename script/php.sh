#!/bin/bash
num=`ps aux | grep php-fpm | grep -v grep | wc -l`
if [ $num -eq 0 ];then
	curl 'https://oapi.dingtalk.com/robot/send?access_token=f3e244bb014079caa37872ee7c01649436dcb4ebb813e7ce890c1b1589d6c64b' -H 'Content-Type: application/json' -d '{"msgtype":"text","text":{"content":"监控报警：测试环境php-fpm进程停止，请修复"}}'
fi
 
num=`ps aux | grep nginx | grep -v grep | wc -l`
if [ $num -eq 0 ];then
	curl 'https://oapi.dingtalk.com/robot/send?access_token=f3e244bb014079caa37872ee7c01649436dcb4ebb813e7ce890c1b1589d6c64b' -H 'Content-Type: application/json' -d '{"msgtype":"text","text":{"content":"监控报警：测试环境nginx进程停止，请修复"}}'
fi

