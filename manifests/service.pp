# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_ca::service

class puppet_ca::service {
      service { 'puppetserver':
      name   => $::puppet_ca::service,
      ensure => $::puppet_ca::start,
      enable => $::puppet_ca::enable,
    }

}
