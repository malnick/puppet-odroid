class odroid::rc_d (){
  file{'/etc/init.d/status.sh':
    ensure => file,
    source => 'puppet:///modules/odroid/status.sh',
    mode => '0777',
    owner => 'root',
    group => 'root',
  }

  file{'/etc/init.d/port_open.c':
    ensure => file,
    source => "puppet:///modules/odroid/port_open.c",
  }

  exec{'port_open':
    command => '/usr/bin/gcc -o port_open /etc/init.d/port_open.c',
    require => File['/etc/init.d/port_open.c'],
  }

  service{'status.sh':
    ensure => running,
    enable => true, 
    provider => 'debian',
    hasstatus => false,
    start => '/etc/init.d/./status.sh &',
    require => [File['/etc/init.d/status.sh'], Exec['port_open']]
  }


}
