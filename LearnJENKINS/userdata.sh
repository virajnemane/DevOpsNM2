############  userdata start ############
#!/bin/bash
JAVAURL=http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.rpm
TOMCATURL=https://downloads.apache.org/tomcat/tomcat-10/v10.0.0-M7/bin/apache-tomcat-10.0.0-M7.tar.gz
MAVENURL=http://apachemirror.wuchna.com/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
JAVA_HOME=/usr/java/jdk1.8.0_141/jre

#install git
yum install git -y

#install java
cd /tmp
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" $JAVAURL
rpm -ivh jdk-8u141-linux-x64.rpm

#install jenkins
mkdir /local/apps/jenkins /local/apps/jenkins/bin /local/apps/jenkins/home /local/apps/jenkins/logs -p
cd /local/apps/jenkins
wget http://mirrors.jenkins-ci.org/war/2.245/jenkins.war

#install tomcat
mkdir /local/apps/tomcat -p
cd /tmp
wget $TOMCATURL
tar -xvf apache-tomcat-10.0.0-M7.tar.gz
cd /tmp/apache-tomcat-10.0.0-M7/
mv * /local/apps/tomcat
chmod 755 /local/apps/tomcat/bin/*
sh -x /local/apps/tomcat/bin/startup.sh
############  userdata end ############
