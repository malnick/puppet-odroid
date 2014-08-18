class odroid::users{

  $groups = ['adm', 'dialout', 'fax', 'cdrom', 'floppy', 'tape', 'sudo', 'audio', 'dip', 'video', 'plugdev','netdev', 'nopasswdlogin', 'lpadmin', 'scanner', 'fuse']

  user{'malnick':
    ensure => present,
    groups => $groups,
    password => '$6$3k97GXPn$tFxz44VGyYvs7EQH2tuQ1BaBEc66FssMT93bC7zL1JfPHVEwGnuBU6JyPzNemB7ToQfOtDtthODa1apGIssYm.',
    uid => '1005',
  }

  user{'root':
    ensure => present,
    password => '$6$3k97GXPn$tFxz44VGyYvs7EQH2tuQ1BaBEc66FssMT93bC7zL1JfPHVEwGnuBU6JyPzNemB7ToQfOtDtthODa1apGIssYm.',
  }

}
