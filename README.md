# Intro

This git repository contains an example of how to create an Apache Guacamole Server (HTML5 RDP/SSH Terminal Server).


# Requirements

Ubuntu 14.04

I used Ubuntu 14.04 as that is what i was able to use on Fujitsu K5.   You may want to tweak the package dependancies to your own distro requirements.


# Usage


```var/guacamole.yml``` contains; 
* The passwords and usernames for everything.  Change these.
* Update the self-signed certificate details

I have tried to harden the mysql and tomcat instances.  This may not be enough for you and no warrenty is expressed or implied. As per the ```LICENCE``` file.

Have fun!
