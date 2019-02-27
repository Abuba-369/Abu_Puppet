class puppet_multi::install {
     package { 'puppetserver':
     name   => $::puppet_multi::package_name,
      }
     package { 'puppetdb-termini':
     ensure => present,
     name   => puppetdb-termini,
    }
}
