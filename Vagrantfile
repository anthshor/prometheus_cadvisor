Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7"
  config.vm.provider :virtualbox do |vb|
    vb.name = "docker-vm"
    #vb.customize ['storagectl',  'docker-vm', '--name', 'SATA Controller', '--add', 'SATA'] 
    #vb.customize ['createmedium', '--filename', 'docker-disk', '--size', '5128', '--format', 'QCOW'] 
    #vb.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', '1', '--device', '0', '--type', 'hdd', '--medium', 'docker-disk']
    config.vm.network "forwarded_port", guest: 8080, host: 8080
    config.vm.network "forwarded_port", guest: 9090, host: 9090
  end
  config.vm.provision "shell", path: "provision.sh"
end
