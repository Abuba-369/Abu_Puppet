###This file will install puppet CA based on the module puppet_ca
class { 'puppet_ca':
        server => hostname,
        ca_server => hostname,

        }

