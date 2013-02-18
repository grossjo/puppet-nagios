class nagios-node {
  notify { "Installing the nagios module" : }

  exec { "/usr/bin/apt-get update -y" :
    before => Class['nagios']
  }

  class { "nagios" :
  }
}

include nagios-node