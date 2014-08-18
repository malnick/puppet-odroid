class odroid::network(){

  file{'/etc/network/interfaces':
    ensure => file,
    content => template('odroid/interfaces'),
  }



}
