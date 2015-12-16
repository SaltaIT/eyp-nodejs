#
#
class nodejs(
              $lnnode=true,
            ) inherits params {

  package { 'nodejs':
    ensure => 'installed',
  }

  package { 'npm':
    ensure => 'installed',
  }

  #ln -s /usr/bin/nodejs /usr/bin/node
  if($lnnode)
  {
    file { '/usr/bin/node':
      ensure => '/usr/bin/nodejs',
      require => Package['nodejs'],
    }
  }

}
