# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_ca::install

class puppet_ca::install {
     package { 'puppetserver':
     ensure => $::puppet_ca::version,
     name   => $::puppet_ca::package,
  }

}
