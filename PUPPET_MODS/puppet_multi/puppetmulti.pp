
###This file will install puppet CA based on the module puppet_ca
class { 'puppet_multi':
        server => puppetca.zippyops.com,
        ca_server => puppetca.zippyops.com,

        }
