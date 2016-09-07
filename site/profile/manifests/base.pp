#anadir rutas
class profile::base {

  #the base profile should include component modules that will be on all nodes
  class { '::ntp':
  servers => [ 'ntp1.corp.com', 'ntp2.corp.com' ],
  }

network::mroute { 'eth0':
  routes => {
    '32.33.10.0/24' => '10.0.2.2',
    '1.1.0.0/8'       => '10.0.2.2',
    '1.8.82.0/16'     => 'eth0',
  }
}
}
