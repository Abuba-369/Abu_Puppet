class puppet_ca::params {
        $package_name = 'puppetserver'
        $service_name = 'puppetserver'
        $service_ensure = 'running'
        $service_enable = true
        $server         = 'localhost'
        $ca_server      = 'localhost'

}
