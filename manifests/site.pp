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

halo::server{ 'server':
  owner            => 'sapphalo',
  group            => 'sapphalo',
  path             => '/home/halo-server',
  name             => 'Test Halo Server',
  port             => '2800',
  rcon_password    => 'sweetdude',
  spawn_protection => 2,
  ping_kick        => 500,
  maps             => ['bloodgulch']
}

# halo::map{ 'bigassv3_1':
#   name => 'bigassv3_1',
#   url  => 'http://halomd.macgamingmods.com/mods/bigassv3_1.zip',
#   path => '/home/halo-server',
# }