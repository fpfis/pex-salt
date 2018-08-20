FROM centos:7
ADD salt* /usr/bin/
RUN yum install -y epel-release &&  yum install -y openssh-clients MySQL-python