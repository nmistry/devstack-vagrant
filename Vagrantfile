# -*- mode: ruby -*-
# # vi: set ft=ruby :

Vagrant.configure("2") do |config|
   config.vm.box = "ubuntu-13.04"
   config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/raring/current/raring-server-cloudimg-amd64-vagrant-disk1.box"
   config.cache.auto_detect = true


  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
#    vb.customize ["modifyvm", :id, "--ioapic", "on"]   
  end

  # Configure a host only private network.
  config.vm.network "private_network", ip: "192.168.50.4"
  
  # Updating the kernel breaks guest additions, so lets use NFS shared folders which are faster.
  config.vm.synced_folder "./vagrant", "/vagrant", nfs: true

  # install any dependencies
  config.vm.provision :shell, path: "scripts/install-deps.sh"
  
  # install devstack as the vagrant user
  config.vm.provision :shell, path: "scripts/install-devstack.sh", privileged: false
  
  # Dont update the virtualbox guest additions (we dont need them)
#  config.vbguest.auto_update = false
  
end


