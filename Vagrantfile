# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = 'ubuntu-precise-64'
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'

  # Provision from the manifests directory and module directory
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "modules"
    puppet.options = "--verbose --debug"
  end

end

#puppet apply --verbose --debug --modulepath '/vagrant/modules' /vagrant/manifests/default.pp --detailed-exitcodes