# Using Puppet, install flask from pip3
package { 'flask-2.1.0':
  ensure => present,
  provider => 'pip3',
}