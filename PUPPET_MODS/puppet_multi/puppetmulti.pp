
###This file will install puppet Multimaster based on the module puppet_multi
class { 'puppet_multi':
        server => 'puppetca.zippyops.com',
        ca_server => 'puppetca.zippyops.com',
        puppetdb_servers => 'https://puppetdb1.zippyops.com:8081,https://puppetdb2.zippyops.com:8081',
        }
