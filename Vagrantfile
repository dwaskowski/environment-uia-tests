Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  config.vm.hostname = "test-arilo-box"

  config.vm.provision :shell, path: "bootstrap.sh"

  config.vm.network :private_network, ip: "192.168.255.40"

  config.ssh.forward_agent = true

  config.vm.synced_folder "../test", "/srv/test", :nfs => true

  config.vm.provider :virtualbox do |vb|
    vb.name = "Test Arilo Box 1.0"
    vb.customize [
      "modifyvm", :id,
      "--memory", 8192,
      "--cpus", 2
    ]
  end  
end
