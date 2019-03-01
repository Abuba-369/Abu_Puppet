##This file will Download both Puppetdb and Puppetboard based on the module puppetlabs-puppetdb,puppetboard modules

class { 'puppetdb':
        listen_address  => '0.0.0.0',
        }
class { 'puppetboard':
        manage_git      => true,
        manage_virtualenv => true,
        reports_count => 40,
        default_environment => 'customers',
        manage_selinux => false,
        }
class { 'apache': }
class { 'apache::mod::wsgi':
    wsgi_socket_prefix => "/var/run/wsgi",
  }
class { 'puppetboard::apache::vhost':
  vhost_name => $::servername,
  port => 8888,
}
