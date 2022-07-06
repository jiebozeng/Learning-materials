强制清理内存 

1.查看内存情况

free -h

2. 先执行sync 命令

sync

3. 输入手动释放内存命令

echo 3 > /proc/sys/vm/drop_caches
