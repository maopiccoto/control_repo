node default {
  file {'/root/README.txt':
    ensure => file,
    content => 'Best README ever made /n',
  }
}
node 'master.puppet.vm' {
  include role::master_server
}
