class puppet_ca::install (
$package_name = $::ssh::package_name,
) {
  package { 'ssh-package':
    name   => $package_name,
  }
}


