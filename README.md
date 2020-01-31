# ansible-meetup :octocat:

> Ansible: Automation engine used mostly for configuration management 

We use Ansible in this project to *configure* a RaspberryPi.

By *configure* I mean the installation of packages and the tweak on some defaults of the standard operative system installation :woman_technologist:

For more info check directly the contents of `playbook.yml`

# Requirements :warning:
 - Ansible should be installed in your standard computer (which will be the control node)
 - You will need ssh connectivity between the control node and the RaspberryPi 
 - The RaspberryPi should have Raspbian installed and this [configuration](TODO) done

# Test :whale:
There is a Dockerfile to build an image that can be used to test the playbook without using it directly in the RaspberryPi.

You can build the image & run the container with:

```
docker build -t raspbian-ansible-test . && docker run raspbian-ansible-test:latest ansible-playbook playbook.yml 
```

If it ends succesfully, the playbook is working well.

Also, a CircleCI build is configured to test the playbook in the container on each push.

Its current status is [![CircleCI](https://circleci.com/gh/arcones/ansible-meetup.svg?style=svg)](https://circleci.com/gh/arcones/ansible-meetup)

# Roadmap :motorway:
- Add ssh + sudoers configuration that needs to be done in the raspi
- Add raspbian docker image (for the raspis)
- Change the localhost thingy of the playbooks!!!
- Work on the playbook:
    Add .vimrc
