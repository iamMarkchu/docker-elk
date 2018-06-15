# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"
  config.vm.hostname = "ELK-vagrant"

  # config.vm.box_check_update = true

  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.network "forwarded_port", guest: 5601, host: 5601
  config.vm.network "forwarded_port", guest: 9200, host: 9200
  config.vm.network "forwarded_port", guest: 9300, host: 9300

  config.vm.provider "virtualbox" do |vb|
    vb.name = "ELK_vagrant"
    vb.memory = "4096"
    vb.cpus = 2
  end
end
