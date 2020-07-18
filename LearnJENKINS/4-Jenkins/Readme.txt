You can use userdata given in "1-Jenkins" to spin ec2 server with jenkins setup.

#System should have python 2.6+ with boto with ansible
yum install python-boto -y
amazon-linux-extras install ansible2

#install ansible plugin in jenkins

#in GENERAL section, give parameter for REGION KEYNAME SGNAME SGNAME

#in Source Code Mgmt section, give GIT url

#in BUILD section, Invoke Ansible Playbook, select Do not specify Inventory, click on advance and configure EXTRA VARIABLES and provide value of parameter.
for example, in parameter we are taking value of REGION from user, then in EXTRA VARIABLE you need to define,
key - REGION
value - ${REGION}


