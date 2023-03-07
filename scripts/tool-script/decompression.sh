#!/bin/bash
#判断压缩包使用的是gz还是bz2，之后使用对应的程序解压缩到/opt目录下。
 
case $1 in
 *.tar.gz)
   echo "解压gz格式的压缩包"
   tar -zxvf $1 -C /opt/
   ;;
 *.tar.bz2)
   echo "解压bz2格式的压缩包"
   tar -jxvf $1 -C /opt/
   ;;
 *)
   echo "无法识别的解压格式！"
esac
