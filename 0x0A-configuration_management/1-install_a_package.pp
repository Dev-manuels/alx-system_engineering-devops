# Using Puppet, install flask from pip3

# install pip3
package { 'python3-pip':
  ensure => installed,
}

# install flask using pip
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

# install Werkzeug using pip
package { 'Werkzeug':
  ensure   => '2.2.1',
  provider => 'pip3',
}
