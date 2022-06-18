#Date : 12-06-2022
#!/bin/bash

##----------------------------------Jenkins Installation-------------------------

sudo yum install java-1.8.0-openjdk-devel -y

if [ $? -eq 0 ]
then
echo "installation failed please check error and try again"
exit 23
fi

# Enable the jenkins repository

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo


sudo yum install wget -y

sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo

sudo yum install jenkins

sudo systemctl start jenkins

#paste ip in the web browser  192.168.50.1
