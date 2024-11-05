git  branch
*(HEAD detached at 925fda6)
master

新建分支 

git branch temp

切换到分支

git checkout temp

切换到主线

git checkout master

merge  刚才创建的临时分支

git merge temp

检查是否有冲突 ，没有就提交到远端 

git push origin master

删除临时分支 

git branch -d temp

查看日志

git reflog --date=iso|grep pull