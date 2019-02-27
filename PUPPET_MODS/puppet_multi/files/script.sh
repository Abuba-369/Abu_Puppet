#! /bin/sh

echo 192.168.1.127 puppetserver.zippyops.com >> /etc/hosts
systemctl start firewalld
firewall-cmd --zone=public --add-port={8140/tcp,8081/tcp,8080/tcp} --permanent
firewall-cmd --reload
/opt/puppetlabs/bin/puppet agent -t
