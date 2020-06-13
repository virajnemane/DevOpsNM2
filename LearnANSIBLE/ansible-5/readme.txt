#comment DOCUMENTROOT and HTTP_PORT line in host_vars/dev01.yml and then run playbook.
ansible-playbook apache.yml -e HOSTS=dev01

#now uncomment DOCUMENTROOT and HTTP_PORT line in host_vars/dev01.yml and then run playbook.
ansible-playbook apache.yml -e HOSTS=dev01

#now run playbook with parameter
ansible-playbook apache.yml -e HOSTS=dev01 -e DOCUMENTROOT=/opt/htdocs HTTP_PORT=33000