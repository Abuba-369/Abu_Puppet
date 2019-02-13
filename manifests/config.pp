# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_ca::config

class puppet_ca::config {

	file { '/etc/puppetlabs/puppet/puppet.conf':
                ensure  => file,
                mode    => '0644',
                owner   => 'puppet',
                group   => 'puppet',
                source  => 'puppet:///modules/puppet_ca/puppet.conf',
                }

	 file { '/etc/sysconfig/puppetserver':
                ensure  => file,
                mode    => '0644',
                owner   => 'puppet',
                group   => 'puppet',
                source  => 'puppet:///modules/puppet_ca/puppetserver',
                }

	 file { '/home/zippyops/script.sh':
		ensure	=> present, 
   		source => 'puppet:///modules/puppet_ca/script.sh',  
   		mode => '0755', 
 	      } -> 
 	
	exec { '/home/zippyops/script.sh': } 
}
