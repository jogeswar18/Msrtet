Step1:(Install the apache webserver in  MSR-test-Instance-1)
=======
I have install two Ubuntu  instances  with t2.miro
----------------------------------------------------
Names with
=============
Instance Name1 : MSR-test-Instance-1
Instance Name 2 : MSR-test-Instance-2
------------------------------------------------

 Next(ssh communication perpose)
 ========
 -> creating new user Name -> test 
 Password: 12345
 Steps:sudo su -
adduser test
passwd test
vi  /etc/ssh/sshd_config    --this is configuration files
PermitRootLogin yes
PasswordAuthentication yes
systemctl restart sshd
systemctl status sshd
ls -l /etc/sudoers
chmod 777 /etc/sudoers
vi /etc/sudoers
test            ALL=(ALL)       ALL
chmod 440 /etc/sudoers
check the user account su test and back to root sudo su-
chmod 777 /etc/sudoers
vi /etc/sudoers
test            ALL=(ALL)       NOPASSWD: ALL
chmod 440 /etc/sudoers
---------------------------------------------------
Nextstep:
sudo apt update
sudo apt-get install docker.io
sudo apt-get install ansible
sudo apt-get install git
Installed below required tools
===============================
NVM – Version 0.33.2
	Node – 8.12.0
	Docker – 18.06 or latest
	Docker Compose – 1.13 or latest
	Openssl – latest version
	Git – latest version
===============================================================
->Docker build -t msr/apache2:1.0 .
->Docker run -itd -p 8080:80 <imageName>:<tagName>

create one directory in path-/home/test/<directoryName>

Create one html file<msr.html>
=======================
<html>
<body bgcolor=yellow>
<h1> This is msr testing page</h1>
</body>
</html>
=====================================

Moving to path /home/test/<directoryName> --using the scp or winscp 

After run the docker command:
->docker run -itd -p 8090:80 -v /home/test/<directoryName>:/var/www/html <imageName>
  ======================================================================================
  
Using ansible playbook (apache.yml)
========================
->ansible-playbook apache2.yml --check
     ->    ansible-playbook apache2.yml 
     =============================================================================================================================
     


Step2:(Install the CouchDB in  MSR-test-Instance-2)     
=================================================
Ansible - Install CouchDB Master on Raspberry Pi
This is an Ansible playbook that allows CouchDB 2 to be installed on a Raspberry Pi.

Install Ansible on your machine
Add your Rasperry Pi's IP address to your Ansible hosts file
Then run

ansible-playbook install-couchdb2-playbook.yml 
