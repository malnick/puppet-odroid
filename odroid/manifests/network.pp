class odroid::network(){

  file{'/etc/network/interfaces':
    ensure => file,
    content => template('odroid/interfaces.erb'),
    notify => Service['networking']
  }

  service{'networking':
    ensure => running,
    enable => true,
  }
}
