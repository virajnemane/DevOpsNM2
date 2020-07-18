#!/bin/bash
yum install git -y
cd /tmp
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.rpm
rpm -ivh jdk-8u141-linux-x64.rpm

cd /tmp
wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip
unzip apache-maven-3.6.3-bin.zip
mkdir /local/apps/maven -p
cd apache-maven-3.6.3
mv * /local/apps/maven/

mkdir /local/apps/jenkins /local/apps/jenkins/bin /local/apps/jenkins/logs /local/apps/jenkins/home -p
cd /local/apps/jenkins
#wget http://mirrors.jenkins.io/war-stable/2.235.2/jenkins.war
wget http://mirrors.jenkins-ci.org/war/2.245/jenkins.war
chown ec2-user:ec2-user /local/apps/* -R
