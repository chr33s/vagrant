Vagrant.configure("2") do |config|
  config.ssh.password = "vagrant"
  config.ssh.shell = "ash"
  
  config.vm.allow_fstab_modification = false
  config.vm.box = "vagrant"
  config.vm.hostname = "vagrant"
  config.vm.network :private_network, type: :dhcp
  config.vm.provider :parallels do |prl|
    prl.check_guest_tools = false
    prl.cpus = 1
    # prl.gui = true
    prl.memory = 2048
    prl.name = "vagrant"
  end
  config.vm.provision "shell", inline: <<-SHELL
    apk update
    apk add docker
    rc-update add docker boot
    service docker start
  SHELL
  config.vm.synced_folder "~/Code", "~/Code", disabled: true
end
