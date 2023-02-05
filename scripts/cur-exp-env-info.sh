#!/bin/bash
#
# Feature:
# 1.输出CPU和环境变量信息
# 2.给当前CPU和Mem进行一个快照，供调错使用
# author: whoway
# email: whoway2017@qq.com
#
echo '############ CPU  info ##############'
echo -n 'CPU型号: '
cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c
echo -n '物理CPU个数: '
cat /proc/cpuinfo| grep "physical id"| sort| uniq| wc -l
echo -n '单个物理CPU中core的个数|即核数: '
cat /proc/cpuinfo| grep "cpu cores"| uniq
echo -n 'top命令中执行的逻辑CPU数: '
cat /proc/cpuinfo| grep "processor"| wc -l


echo ' '
echo '############ env | tail -n ################'
env | tail -2 #看后2行的环境变量


echo ' '
echo '############ Cur CPU + Mem load info + User info##############'
# 查看cur time内存使用量和交换区使用量,供调错使用
# -i 不显示任何闲置 (idle) 或无用 (zombie) 的进程 , 减少输出信息量
top -bn 1 -i -c
