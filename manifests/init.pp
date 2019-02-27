# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_ca
class puppet_ca  (
  $version        = 'present',
  $enable         = true,
  $start          = true,
  $package        = 'puppetserver',
  $service        = 'puppetserver',
  $manage_service = true,
  $config         = {},

) {
  anchor { 'puppet_ca::begin': }
  -> class { '::puppet_ca::install': }
  -> class { '::puppet_ca::config': }
  ~> class { '::puppet_ca::service': }
  -> anchor { 'puppet_ca::end': }
}

 

