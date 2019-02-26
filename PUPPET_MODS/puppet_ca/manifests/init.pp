class puppet_ca(
  $version           = $::puppet_ca::params::version,
  $package_name      = $::puppet_ca::params::package_name,
  $service_name      = $::puppet_ca::params::service_name,
  $service_ensure    = $::puppet_ca::params::service_ensure,
  $service_enable    = $::puppet_ca::params::service_enable,
  $server            = $::puppet_ca::params::server,
  $ca_server         = $::puppet_ca::params::ca_server,


) inherits ::puppet_ca::params {
  class { '::puppet_ca::service': }
  class { '::puppet_ca::config': }
  class { '::puppet_ca::install': }

  Class['::puppet_ca::install']
  -> Class['::puppet_ca::config']
  ~> Class['::puppet_ca::service']
  -> Class['puppet_ca']
}
