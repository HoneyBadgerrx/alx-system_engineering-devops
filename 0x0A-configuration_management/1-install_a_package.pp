# Install a package using Puppet

package { 'flask':
  ensure => 'installed',
  command => '/usr/bin/pip3 install flask -v 2.1.0'
}
