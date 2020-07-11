#!/bin/bash
JENKINS_HOME=/local/apps/jenkins/home
JENKINS_URL=/local/apps/jenkins
for i in $JENKINS_HOME $JENKINS_URL /local/apps/jenkins/webroot
do
  if [ ! -d $i ]
  then
    mkdir $i
  fi
done
HTTP_PORT=9090
#AJP_PORT=
#JENKINS_ARGS="--webroot=/local/apps/jenkins/webroot --prefix=/jenkins --httpPort=$HTTP_PORT --ajp13Port=$AJP_PORT"
JENKINS_ARGS="--webroot=/local/apps/jenkins/webroot --prefix=/jenkins --httpPort=$HTTP_PORT"
#JENKINS_ARGS="--webroot=/local/apps/jenkins/webroot"

export JENKINS_HOME JENKINS_ARGS JENKINS_URL
`which java` -jar /local/apps/jenkins/jenkins.war $JENKINS_ARGS