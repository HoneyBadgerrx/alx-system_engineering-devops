# Install a package using Puppet

package { 'pip3':
  ensure => 'installed',
}

exec { 'install Flask 2.1.0':
  command => 'pip3 install Flask==2.1.0',
  path    => '/usr/bin',
  unless  => 'pip3 list | grep Flask'
}
