#!/bin/bash
rpm -Uvh https://yum.puppet.com/puppet6/puppet6-release-el-7.noarch.rpm
yum install puppet-agent -y
yum install telnet -y
export PATH=/opt/puppetlabs/bin:$PATH  
export MANPATH=/opt/puppetlabs/client/tools/share/man:$MANPATH
systemctl start firewalld
firewall-cmd --zone=public --add-port={8140/tcp,8081/tcp,8080/tcp,5432/tcp,8888/tcp} --permanent
firewall-cmd –reload
