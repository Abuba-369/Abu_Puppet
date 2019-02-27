#!/bin/sh

rm -rf /etc/puppetlabs/puppet/ssl
/opt/puppetlabs/bin/puppet agent -t
