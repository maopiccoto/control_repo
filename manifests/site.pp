node default {
  file {'/root/README.txt':
    ensure => file,
    content => 'Best README ever made',
  }
}
