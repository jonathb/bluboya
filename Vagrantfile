# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # Ubuntu 14.04 worked, I hadn-t got time to sort out U1606 guest or Alpine
  config.vm.box = "ubuntu/trusty64"
# config.vm.box = "ubuntu/xenial64"

  config.vm.network "private_network", ip: "192.168.33.100"
  config.vm.hostname = "docker"

  # To make running ansible playbooks against vagrant hosts a smoother experience, we
  # run apt-get udpate and copy our public key to the host.
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
  SHELL

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "install-docker.yml"
    ansible.verbose = "v"
  end
end

