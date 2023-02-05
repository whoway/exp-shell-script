#!/bin/bash
#
# Feature:
# 1.给脚本执行添加时间戳，做实验备份
# 2.计算脚本执行耗时
# author: whoway
# email: whoway2017@qq.com
#

echo '开始时间: ' $(date +%F-%R-%T) 
#采用Unix时间来计算耗时 
begin=$(date +%s) 

# your script excute command
###########################
sleep 63s
############################

echo '结束时间: ' $(date +%F-%R-%T)
end=$(date +%s) 
echo '总耗时长length：'
timelen=$((end-begin))
echo check time = ${timelen} seconds
myh=$((timelen/3600))
timelen=$((timelen % 3600))
mymin=$((timelen / 60))
timelen=$((timelen % 60))
echo check time = ${myh} hours ${mymin} mins ${timelen} seconds
