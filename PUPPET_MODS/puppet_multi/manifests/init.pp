class puppet_multi  (

  $package_name      = $::puppet_multi::params::package_name,
  $service_name      = $::puppet_multi::params::service_name,
  $service_ensure    = $::puppet_multi::params::service_ensure,
  $service_enable    = $::puppet_multi::params::service_enable,
  $server            = $::puppet_multi::params::server,
  $ca_server         = $::puppet_multi::params::ca_server,
  $puppetdb_host     = $::puppet_multi::params::puppetdb_host,

) inherits ::puppet_multi::params {
  class { '::puppet_multi::service': }
  class { '::puppet_multi::config': }
  class { '::puppet_multi::install': }

  Class['::puppet_multi::install']
  -> Class['::puppet_multi::config']
  ~> Class['::puppet_multi::service']
  -> Class['puppet_multi']
}
