class odroid::rc_d (){
  file{'/etc/init.d/status.sh':
    ensure => file,
    source => 'puppet:///modules/odroid/status.sh',
    mode => '0777',
    owner => 'root',
    group => 'root',
  }

  service{'/etc/init.d/status.sh':
    ensure => running,
    enable => true,
    require => File['/etc/init.d/status.sh'],
  }


}
