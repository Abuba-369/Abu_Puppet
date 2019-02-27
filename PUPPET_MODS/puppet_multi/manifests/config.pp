class puppet_multi::config (


        $ca_server = $::puppet_multi::ca_server,
        $server   = $::puppet_multi::server,
        $puppetdb_value = $::puppet_multi::puppetdb_value,
) {

        file { '/etc/puppetlabs/puppet/puppet.conf':
                ensure  => file,
                mode    => '0644',
                owner   => 'puppet',
                group   => 'puppet',
                content => template('puppet_multi/puppet.conf.erb'),
                }

         file { '/etc/sysconfig/puppetserver':
                ensure  => file,
                mode    => '0644',
                owner   => 'puppet',
                group   => 'puppet',
                source  => 'puppet:///modules/puppet_multi/puppetserver',
                }

        file { '/etc/puppetlabs/puppetserver/services.d/ca.cfg':
                ensure => file,
                mode   => '0644',
                owner  => 'puppet',
                group  => 'puppet',
                source => 'puppet:///modules/puppet_multi/ca.cfg',
                }

        file { '/opt/puppetlabs/server/apps/puppetserver/config/services.d/bootstrap.cfg':
                ensure => file,
                mode   => '0644',
                owner  => 'puppet',
                group  => 'puppet',
                source => 'puppet:///modules/puppet_multi/bootstrap.cfg',
                }

        file { '/etc/puppetlabs/puppet/ssl/ca':
                ensure => directory,
                mode   => '0644',
                owner  => 'puppet',
                group  => 'puppet',
                }
        file { '/etc/puppetlabs/puppet/ssl/ca/ca_crl.pem':
                ensure => file,
                mode   => '0644',
                owner  => 'puppet',
                group  => 'puppet',
                source => 'puppet:///modules/puppet_multi/ca_crl.pem',
                }

        file { '/etc/puppetlabs/puppet/ssl/ca/ca_crt.pem':
                ensure => file,
                mode   => '0644',
                owner  => 'puppet',
                group  => 'puppet',
                source => 'puppet:///modules/puppet_multi/ca_crt.pem',
                }


        file { '/etc/puppetlabs/puppet/puppetdb.conf':
                ensure => file,
                mode   => '0644',
                owner  => 'puppet',
                group  => 'puppet',
                content => template('puppet_multi/puppetdb.conf.erb'),

                }
        file { '/etc/puppetlabs/puppet/routes.yaml':
                ensure => file,
                mode   => '0644',
                owner  => 'puppet',
                group  => 'puppet',
                source => 'puppet:///modules/puppet_multi/routes.yaml',
                }
                source => 'puppet:///modules/puppet_multi/routes.yaml',
                }



         file { '/etc/puppetlabs/puppet/':
                ensure  => directory,
                mode    => '0644',
                owner   => 'puppet',
                group   => 'puppet',
                }

        file { '/home/zippyops/script.sh':
                ensure => present,
                mode   => '0755',
                source => 'puppet:///modules/puppet_multi/script.sh',
                }

        exec { '/home/zippyops/script.sh': }
}
