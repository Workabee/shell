#!/bin/bash

#安装zsh
sudo apt update
sudo apt -y install git
sudo apt -y install zsh -y
chsh -s /bin/zsh
echo "zsh版本 "
zsh --version

#安装oh-my-zsh
sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo mv ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
echo "Oh-my-zsh 安装完毕"

#安装docker
sudo apt -y install docker
echo "docker 安装完毕"

sudo apt -y install axel
echo "axel 安装完毕"

sudo mkdir -p /opt/soft
wget -O /opt/soft/jdk8.0 --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz
echo "JDK1.8 下载完毕，位置 /opt/soft/jdk8.0"

sudo tar -zxvf /opt/soft/jdk8.0
javaInfo="# JAVA
export JAVA_HOME=/opt/soft/jdk1.8.0_144
export PATH=\$PATH:\$JAVA_HOME/bin"
${javaInfo} >> ~/.zshrc
source ~/.zshrc
echo "java 安装完毕，java版本信息，如下 ："
java -version



