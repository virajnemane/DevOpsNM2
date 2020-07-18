#!/bin/bash
cd /tmp
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.rpm
rpm -ivh jdk-8u141-linux-x64.rpm
wget http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.37/bin/apache-tomcat-9.0.37.zip
unzip apache-tomcat-9.0.37.zip
cd /tmp/apache-tomcat-9.0.37/
mkdir /local/apps/tomcat -p 
mv * /local/apps/tomcat
chmod 755 /local/apps/tomcat/bin/*
chown ec2-user:ec2-user /local/apps/* -R