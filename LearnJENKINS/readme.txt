#-> Spin one EC2 instance in AWS and use below userdata
#Note - Open 8080 and 9090 port in security group

#!/bin/bash
yum install git maven -y
cd /tmp
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.rpm
rpm install jdk-8u141-linux-x64.rpm
mkdir /local/apps/jenkins /local/apps/jenkins/home /local/apps/jenkins/webroot /local/apps/tomcat -p
cd /tmp
wget https://downloads.apache.org/tomcat/tomcat-10/v10.0.0-M4/bin/apache-tomcat-10.0.0-M4.zip
unzip apache-tomcat-10.0.0-M4.zip
cd /tmp/apache-tomcat-10.0.0-M4/
mv * /local/apps/tomcat
chmod 755 /local/apps/tomcat/bin/*
sh -x /local/apps/tomcat/bin/startup.sh
cd /local/apps/jenkins
wget http://ftp-nyc.osuosl.org/pub/jenkins/war-stable/2.204.2/jenkins.war

#Once EC2 up, copy startJenkins.sh in /local/apps/jenkins/ and execute it
chmod 755 /local/apps/jenkins/startJenkins.sh
/local/apps/jenkins/startJenkins.sh

#Open http://IP:8080 and http://IP:9090/jenkins
#insert default admin password ---> /local/apps/jenkins/home/secrets/initialAdminPassword
#Install plugins
# skip user creation
# continue with given url

#configure project
#configure source code mgmt
#Jenkins Build in execute shell
mvn clean install
cp $WORKSPACE/webapp/target/webapp.war /local/apps/tomcat/webapps/