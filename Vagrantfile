# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.define "docker-ubuntu"
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision :shell, path: "install-docker.sh"
end
