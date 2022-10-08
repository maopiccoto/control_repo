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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCwZSyipjV4rBMBww6Sks6+ryzjS+D3RCHg7pZlBx3ufqtnqnz3mi5vnKwV8mqG51HjAm8xmMlH7oNMOVAmTJv/xBZvGTtXCA9t5RGywYBgZV9MkRq+h8eDWJ/i7qrxBOVo4/EZh63ulRzujOUIR21aCbKCoCORVqPaGqJzSb1TwNepU5sVQ3+ViT5pd7Ecg1qbZpF8XYf8WuyTEY4xVKyn5KQntG/fw01xn+qBCa9Av7hjcQzUHrC4hNTUNZJRnsHEMFP+18UJrkuWFRT7W8of45jlMi8+kNv9MUzWFWQZoGx5MmnbYv4WL/+mnU+fl+T7t02fOMdlpAXIkmbwITVz',
	}  
}
