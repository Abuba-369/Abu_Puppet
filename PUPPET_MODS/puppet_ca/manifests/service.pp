class puppet_ca::service(
 $service_name   = $::puppet_ca::service_name,
 $service_ensure = $::puppet_ca::service_ensure,
 $service_enable = $::puppet_ca::service_enable,
) {
  service { 'puppetserver-service':
    ensure     => $service_ensure,
    name       => $service_name,
    enable     => $service_enable,
    hasstatus  => true,
    hasrestart => true,
  }
}
