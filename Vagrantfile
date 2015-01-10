# -*- mode: ruby -*-
# vi: set ft=ruby :
#
Vagrant.configure(2) do |config|
  config.vm.hostname = "development"
  config.vm.box = "chromaticleaves/nixos-14.04-x86_64"

  config.vm.network "private_network", ip: "10.10.10.10", auto_config: false
  # config.vm.network "public_network"
  
  config.vm.synced_folder "#{File.expand_path('~')}/Development", "/home/vagrant/Development"
  config.vm.synced_folder "#{File.expand_path('~')}/Downloads", "/home/vagrant/Downloads"

  config.ssh.forward_x11 = true

  config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
  end
 
  # config.vm.provision "shell", inline <<-SHELL
  #   sudo apt-get install apache2
  # SHELL
end
