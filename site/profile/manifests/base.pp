class profile::base {
  user {'admin':
    ensure => present,  
  }
  include role::ssh_server.pp
}
