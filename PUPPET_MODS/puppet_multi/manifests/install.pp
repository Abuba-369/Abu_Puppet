class puppet_multi::install {
     package { 'puppetserver':
     name   => $::puppet_multi::package,
      }
     package { 'puppetdb-termini':
     ensure => present,
     name   => puppetdb-termini,
    }
}
