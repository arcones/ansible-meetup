# Ansible configuration

## Steps in the control node
··· Create an *ansible* user with the command `sudo userdadd -m ansible`
··· Change the user to *ansible* with `sudo su - ansible`
··· Create a ssh key with the command `ssh-keygen`
··· Add an alias to each RaspberryPi IP by adding to the /etc/hosts a line like `192.168.0.11 RaspberryPi4` per RaspberryPi

## Steps for each RaspberryPi

··· From the control node, connect with the RaspberryPi with `ssh pi@<theAliasOfYourRaspberryPi>` and the proper password
··· Create an *ansible* user with `sudo userdadd -m ansible`
··· Set a password for the *ansible* user with `sudo passwd ansible`
··· Logout from the RaspberryPi with `logout`

··· From the control node, switch to *ansible* user with `sudo su - ansible`
··· Copy the ssh key of your control node to the RaspberryPi with `ssh-copy-id <theAliasOfYourRaspberryPi>`
··· Now, if doing `ssh@<theAliasOfYourRaspberryPi>` works without password the ssh copy has worked
··· Logout from the RaspberryPi with the command `logout`

··· Login again in the RaspberryPi with `ssh pi@<theAliasOfYourRaspberryPi>`
··· Do `sudo visudo` and add the line `ansible       ALL=(ALL)       NOPASSWD: ALL` to the file. Save the file and exit.
··· Logout from the RaspberryPi with the command `logout`
