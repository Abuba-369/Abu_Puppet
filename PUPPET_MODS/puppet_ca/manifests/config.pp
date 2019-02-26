# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_ca::config

class puppet_ca::config (


        $ca_server = $::puppet_ca::ca_server,
        $server   = $::puppet_ca::server,
) {

        file { '/etc/puppetlabs/puppet/puppet.conf':
                ensure  => file,
                mode    => '0644',
                owner   => 'puppet',
                group   => 'puppet',
                content => template('puppet_ca/puppet.conf.erb'),
                }

         file { '/etc/sysconfig/puppetserver':
                ensure  => file,
                mode    => '0644',
                owner   => 'puppet',
                group   => 'puppet',
                source  => 'puppet:///modules/puppet_ca/puppetserver',
                }

        file { '/etc/puppetlabs/puppet/autosign.conf':
                ensure  => file,
                mode    => '0644',
                owner   => 'puppet',
                group   => 'puppet',
                }


        file { '/etc/puppetlabs/puppet/':
                ensure  => directory,
                mode    => '0644',
                owner   => 'puppet',
                group   => 'puppet',
                group   => 'puppet',                
                }


}
