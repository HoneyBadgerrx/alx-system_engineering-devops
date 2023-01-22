# Install a package using Puppet

exec { 'install flask':
  command => '/usr/bin/pip3 install flask -v 2.1.0'
}

package { 'flask':
  ensure => 'installed',
  before => Exec['install flask']
}
