node 'alx node' {
  class { 'ssh::client': }

  ssh::client::host_config_entry { 'webserver':
    ensure                   => present,
    user                     => 'ubuntu',
    identityfile             => '/.ssh/school',
    preferredauthentications => 'publickey',
    passwordauthentication   => 'no',
  }
}
