强制清理内存 

1.查看内存情况

free -h

2. 先执行sync 命令

sync

3. 输入手动释放内存命令

echo 3 > /proc/sys/vm/drop_caches

----------------

crontab 计划任务

打开crontab 任务编辑

crontab -e 

添加计划任务 

* * * * * date >> /tmp/time.txt

按 ctrl+x 然后 按y 再按回车键

*    *    *    *    *
-    -    -    -    -
|    |    |    |    |
|    |    |    |    +----- 星期中星期几 (0 - 6) (星期天 为0)
|    |    |    +---------- 月份 (1 - 12) 
|    |    +--------------- 一个月中的第几天 (1 - 31)
|    +-------------------- 小时 (0 - 23)
+------------------------- 分钟 (0 - 59)

每五分钟运行一次 

*/5 * * * *  sh *.sh

重启 
service crond restart

重载
service crond reload

cp linux to linux
scp ssgf_smain root@192.168.0.226:/opt/app/ssgf_smain8100/

run other linux shell
ssh root@192.168.0.138 "/opt/app/real_kill.sh"

update and run 

#!/bin/bash
echo "-------kill ssgf_admin-------"
str=`ps aux | grep "ssgf_admin" | grep -v grep | awk '{print $2}'`
kill -15 $str
if ["$?" -eq 0];then
echo "kill success"
else
echo "kill failed"
fi
cd ssgfadmin
git pull
echo "------begin build ssgf_admin------"
go build -o ../ssgf_admin main.go
echo "------begin run ssgf_admin------"

nohup ../ssgf_admin > ../ssgf_admin.log 2>&1 &
echo "------run ssgf_admin success------"

