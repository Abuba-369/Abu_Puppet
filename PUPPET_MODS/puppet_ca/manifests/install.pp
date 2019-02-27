class puppet_ca::install (
$package_name = $::puppet_ca::package_name,
) {
  package { 'puppetserver-package':
    name   => $package_name,
  }
}


