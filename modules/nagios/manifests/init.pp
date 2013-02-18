# Strong assumptioned nagios module for ubuntu 12.04
# Will bring up an empty nagios server, with no hosts, services
# or hostgroups defined.
# Will have installed relevant modules to be able to
# add hosts, services, hostgroups, nrpe
# and monitor usefully with a decent interface.
class nagios{

  package { 'nagios3' :
    ensure => 'installed'
  }
  package { 'nagios-plugins' :
    ensure => 'installed'
  }

  package { ['apache2', 'libapache2-mod-php5', 'build-essential'] :
    ensure => 'installed'
  }



  user { 'nagios' :
    ensure => 'present',
    managehome => false
  }


  service { 'nagios3' :
    ensure => 'running'
  }
  service { 'apache2',
    ensure => 'running'
  }

}