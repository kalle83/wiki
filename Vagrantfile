# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "dckwiki01"
  config.vm.network "public_network", bridge: "wlp1s0"
  config.vm.synced_folder "transfer/", "/transfer/", create: true
  config.vm.provider "virtualbox" do |v|
    v.name = "wiki-box"
    v.memory = 2048
    v.cpus = 1
  end
end
