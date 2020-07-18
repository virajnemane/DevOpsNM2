We are assuming Jenkins is seperate server, and application is running on another server.
We are using ec2-user in both servers.

#Jenkins server
Spin server for jenkins with using jenkins-userdata.sh
login with ec2-user
copy start_Jenkins.sh and stop_Jenkins.sh in /local/apps/jenkins/bin and change their permission to 755.
run start_Jenkins.sh
try to acces http://<public-ip>:9090/jenkins -----> you should get jenkins page
complete jenkins setup.

#Application server
Spin server for tomat with tomcat-userdata.sh
login with ec2-user
echo "export JAVA_HOME=/usr/java/jdk1.8.0_141/jre" >> ~/.bash_profile
echo "export PATH=$JAVA_PATH/bin:$PATH" >> ~/.bash_profile
cd /local/apps/tomcat/bin
./startup.sh
try to access http://<public-ip>:8080 -----> you should get tomcat page.

