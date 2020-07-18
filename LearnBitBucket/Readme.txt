#Create your login on https://bitbucket.org/
Its a free upto 5 users with unlimited public as well as private repositories.

Import repository from git https://github.com/tciaindiadevops/TestWebApp.git

enable pipeline and select java(maven) project.

bitbucket-pipelines.yml
========================

# This is a sample build configuration for Java (Maven).
# Check our guides at https://confluence.atlassian.com/x/zd-5Mw for more examples.
# Only use spaces to indent your .yml configuration.
# -----
# You can specify a custom docker image from Docker Hub as your build environment.
image: maven:3.6.1

pipelines:
  default:
    - step:
        caches:
          - maven
        script: # Modify the commands below to build your repository.
          - mvn clean install
          - scp webapp/target/webapp.war ec2-user@3.135.191.177:/local/apps/tomcat/webapps/ 

------------------------------------------------------------------------------------------------------
# To copy war file to ec2 instance from bitbucket.
1) Go to repository settings --> pipeline --> ssh-keys --> generate keys
2) copy public key and add it in authorized_keys file in ec2 instance of ec2-user to allow bitbucket server copy files on the ec2.
3) in known hosts section, enter public ip of remote server and click on fetch fingerprint.