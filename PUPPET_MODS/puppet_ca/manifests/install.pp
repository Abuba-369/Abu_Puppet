class puppet_ca::install {
     package { 'puppetserver':
     ensure => $::puppet_ca::version,
     name   => $::puppet_ca::package,
  }

}

