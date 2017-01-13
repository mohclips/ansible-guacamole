# Intro

This git repository contains an example of how to create an Apache Guacamole Server (HTML5 RDP/SSH Terminal Server).

It is primarily used within OpenStack via the userdata in a compute instance to invoke the right settings to install and configure. But you don't have to do it this way if you don't want to.

# Requirements

Ubuntu 14.04

I used Ubuntu 14.04 as that is what i was able to use on Fujitsu K5.   You may want to tweak the package dependancies to your own distro requirements.

The ````userdat.sh```` file contains the depandancies required to install Ansible v2.2 on Ubuntu 14.04 via pip, as Ubuntu installs a very old v1.x version otherwise.  If you are pushing this script to Ubuntu 14.04 from a remote/manager running Ansible v2.2, you probably won't need those dependancies.

# Usage

Apply ```userdata.sh``` as the userdata on your compute instance as you create it.  I do this using Ansibles ```os_server``` module.
* Or run the shell code on the box you intend to install on.

```var/settings.yml``` contains; 
* The passwords and usernames for everything.  Change these.
* Update the self-signed certificate details

I have tried to harden the mysql and tomcat instances.  This may not be enough for you and no warrenty is expressed or implied. As per the ```LICENCE``` file.

Have fun!
