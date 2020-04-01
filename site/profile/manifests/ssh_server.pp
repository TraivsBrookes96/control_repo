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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDCkCddLWQlAmdLed5IdnDiH+ZxPLVgvFp2MMjQ0gYfyUbGj8vax/aJk0hDUuZPwa0s69nqqzkvFCrNyoWXsHjQXQfmAOhLi07tCNnanU3Y7Ds++hNfhRIsV6EP/PQ+hxPWJqFvyR00XAtaRvPFlwRU/oLPsXsMbJy9UKn6uThWyqhDBsSsFcLtHsOvCn7/1By6kRJX9wwwzjdIgEp6UE6qtmrMTWZWXFJKShJ9WWvW2WT/+okH1/VRGjc0Vk7gT9sHEFOHjAoXvrWGFiK/G9sEFhkDCzs9V3sP3lqlZRgTcSw7ebIHuYstEsP+WeqXlsvRSWKuigSft3zb8atyzLL5',
  }  
}
