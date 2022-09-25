class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDaqdzxWH2UjxfkdtPLVqWDrHFDFSrPPYZlsMokbnCVMEALx0aE+Y+AQ3vZX/CLF5LY6Hm4PPtGz0nXnw2YR56OqGoCSI7m9xXq+AyYoMGr0NRrIViY6boWmHlT3FFV0fvdOB6e3I1yNjFYnCFMEFxFuIvZ3IZyk87qzvqdvAi2PdJbLbRueaOc8Ol9zGO6y/n8kHzHHHOe7epuHK/k2qRYIJfYt/YGbxCJRo3HIII0hTdRR6MLIi5+be7vQOb1T/3hBDZNtcY4P+CTe+x4hE2/dvp/pzbEFhWduEJTTuSE3T47a8JsnT9zImO2KTcc6crKW5AerMoXAkTTPbTPJ6UL',
	}  
}
