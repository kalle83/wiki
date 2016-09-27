# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "dckwiki01"
  config.vm.network "public_network", bridge: "wlp1s0"
  config.vm.synced_folder "data/", "/data/",mount_options: ["dmode=777","fmode=777"], create: true
  config.vm.provider "virtualbox" do |v|
    v.name = "wiki-box"
    v.memory = 2048
    v.cpus = 1
  end
  config.vm.provision "shell", path: "docker_install.sh"
  config.vm.provision "setup", type: "shell", path: "setup.sh"
  config.vm.provision "compose", type: "shell" do |s|
    s.inline = "sudo curl -L -o /usr/bin/docker-compose https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m`; sudo chmod +x /usr/bin/docker-compose; sudo docker-compose --version"
  end
end
