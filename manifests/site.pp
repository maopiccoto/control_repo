node default {
}
node 'master.puppet.vm' {
  include role::master_server
  file{'/root/README.txt':
    ensure => file,
    content => "Bienvenidos a  ${fqdn}"\n,
  }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
