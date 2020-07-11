We are assuming Jenkins is seperate server, and application is running on another server.
We are using ec2-user in both servers.
#use below userdata and spin another ec2 instance

-------- userdata script -------------------
#!/bin/bash
cd /tmp
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.rpm
rpm -ivh jdk-8u141-linux-x64.rpm
mkdir /local/apps/tomcat -p
cd /tmp
wget https://downloads.apache.org/tomcat/tomcat-10/v10.0.0-M4/bin/apache-tomcat-10.0.0-M4.zip
unzip apache-tomcat-10.0.0-M4.zip
cd /tmp/apache-tomcat-10.0.0-M4/
mv * /local/apps/tomcat
chmod 755 /local/apps/tomcat/bin/*
chown ec2-user:ec2-user /local/apps/* -R
sh -x /local/apps/tomcat/bin/startup.sh
-------------------------------------------------

