class profile::base {

  #the base profile should include component modules that will be on all nodes
  class { '::ntp':
  servers => [ 'ntp1.corp.com', 'ntp2.corp.com' ],
  }

network::mroute { 'eth0':
  routes => {
    '192.168.10.0/24' => '192.168.2.1',
    '1.1.0.0/8'       => '192.168.5.1',
    '1.8.82.0/16'     => 'eth0',
  }
}
