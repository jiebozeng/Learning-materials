#install

1、下载RabbitMQ
下载地址：

Erlang:https://github.com/rabbitmq/erlang-rpm/releases

Rabbitmq:https://github.com/rabbitmq/rabbitmq-server/releases

下载对应的版本，其中Euler 22.03 对应CentOS8，CentOS8 == Red Hat Enterprise Linux 8（el8）


 2、上传安装文件
再利用xftp工具将上述下载的两个.rpm文件上传到服务器的刚创建的文件夹中

或者用 wget url 下载

3、安装依赖socat
安装Erlang时需要安装Socat.   

# yum install -y socat

4、安装erlang
# rpm -ivh erlang-24.3.4.5-1.el8.x86_64.rpm 


 安装完成后，查询版本验证

#erl -version

  5、安装 RabbitMQ

 6、启动RabbitMQ
启动RabbitMQ　　# systemctl start rabbitmq-server

设置开机自启动 　　# systemctl enable rabbitmq-server


 7、Rabbit网页管理插件
 启用：# rabbitmq-plugins enable rabbitmq_management
 关闭：# rabbitmq-plugins disable rabbitmq_management

 8、RabbitMQ用户管理
因默认用户guest只能本地访问(不建议开启)，可以新增其他用户远程访问

新建一个用户名为admin,密码为123456的管理员，并授予管理员（administrator）权限：

# rabbitmqctl add_user admin 123456
# rabbtitmqctl set_user_tags admin administrator


9、验证
浏览器访问  IP:15672

如果访问不成功，先查看防火墙是否关闭。


#end install