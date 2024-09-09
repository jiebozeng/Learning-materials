linux update golang versin

1.yum remove golang
2.wget new version (wget https://go.dev/dl/go1.23.1.linux-amd64.tar.gz)
3.
sudo tar -C /usr/local -zxvf go1.23.1.linux-amd64.tar.gz
4.
vim ~/.bash_profile
add :

export PATH=$PATH:/usr/local/go/bin

ps: maybe not bash_profile. maybe like :
(/etc/profile, ~/.bash_profile, ~/.profile, ~/.bashrc, etc)

5.
source ~/.bash_profile
6.
go version