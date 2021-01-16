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
    key    => ' AAAAB3NzaC1yc2EAAAADAQABAAABAQDPmj+yHDDEC1vZlyCom95CNG+gAYQRJgsmLhpQcebRbv6d3RCtLMQT/9OiIhbdVt3EZnPqdu2OsYlIEv/sabPJgfX6AiQlwzO2hKZUduHbff6fwFbbR7FPjQg+WV9S8c0Ui4xwntwSeasSLFYJ3xYsNfjlGbni9zojkJOXP3wsfuzD6nfTBa5NmDjhzwLX5VLowiGesxfGD9lrOWmCgRFA+cFdKhglMmgduvzhTcGAppSGRxaduIt12gyVFcKmbneT4le+wAEizk6Z5v+qaTk05g2orAYNZxF2W6NWTg3N7gwqbw0z9Ck3MTQQU3m5rJgGCIgsDrUS8gso8jqh9Qsl',
  }  
}
