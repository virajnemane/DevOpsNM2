#-> Spin one EC2 instance in AWS and use userdata.sh
#Note - Open 8080 and 9090 port in security group

#Once EC2 up, copy startJenkins.sh and stop_jenkins.sh in /local/apps/jenkins/bin and execute it
chmod 755 /local/apps/jenkins/bin/startJenkins.sh
/local/apps/jenkins/bin/startJenkins.sh

#Open http://IP:8080 and http://IP:9090/jenkins
#insert default admin password ---> /local/apps/jenkins/home/secrets/initialAdminPassword
#Install plugins
# skip user creation
# continue with given url
#Global tool configuration --> Add MAVEN intallation path

#configure maven project
#configure source code mgmt
#Build ---> Goals and options
clean install
#Post steps --> execute shell ---> run only Build succeed
cp $WORKSPACE/webapp/target/webapp.war /local/apps/tomcat/webapps/