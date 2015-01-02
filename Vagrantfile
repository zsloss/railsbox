Vagrant.configure(2) do |config|

  config.vm.box = "hashicorp/precise64"
  config.vm.provision :shell, privileged: false, path: "bootstrap.sh"
  config.vm.network :forwarded_port, host: 3000, guest: 3000

end