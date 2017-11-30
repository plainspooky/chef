# -*- mode: ruby -*-
# vim: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "ubuntu/xenial64"

	config.vm.provider "virtualbox" do |vb|
		vb.customize ["modifyvm", :id, "--memory", "512"]
		vb.customize ["modifyvm", :id, "--cpus", "1"]
	end

	config.vm.provision "shell", path:"./scripts/software_update"
	config.vm.provision "shell", path:"./scripts/chef_install"
	config.vm.provision "shell", inline:"ln -s /vagrant/chef-repo/ ~", privileged:false

end
