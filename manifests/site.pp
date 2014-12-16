# globally set exec path
# might not be needed
Exec {
  path => '/usr/bin:/bin',
}

group { 'sapphalo':
  ensure => present,
  system => true,
}

user { 'sapphalo':
  ensure     => present,
  system     => true,
  managehome => true,
  require    => Group['sapphalo'],
  gid        => 'sapphalo',
}

file{ '/var/halo_maps':
  source => "puppet:///modules/halo/maps",
  owner   => $owner,
  group   => $group,
  recurse => true,
}

halo::server{ 'server_1':
  owner            => 'sapphalo',
  group            => 'sapphalo',
  path             => '/home/halo-server',
  name             => 'Puppet Halo Server',
  port             => 2800,
  rcon_password    => 'sweetdude',
  spawn_protection => 2,
  ping_kick        => 500,
  maps             => ['bloodgulch']
}

halo::server{ 'server_2':
  owner            => 'sapphalo',
  group            => 'sapphalo',
  path             => '/home/slayer-server',
  name             => 'Puppet Halo Server 2',
  port             => 2802,
  rcon_password    => 'sweetdude',
  spawn_protection => 2,
  ping_kick        => 500,
  maps             => ['bloodgulch']
}
