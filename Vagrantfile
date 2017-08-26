Vagrant.configure("2") do |config|

#  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision :shell, path: "scripts/hosts.sh"
  config.vm.provision :shell, path: "scripts/nginx_setup.sh"

  # lb001
  config.vm.define :lb001 do |v|
    v.vm.box = "centos67"
    v.vm.hostname = "lb001"
    v.vm.network :private_network, ip:"192.168.50.13", virtualbox__intnet: "intnet"
    v.vm.network :forwarded_port, guest: 80, host: 80
  end

  # cache001
  config.vm.define :cache001 do |v|
    v.vm.box = "centos67"
    v.vm.hostname = "cache001"
    v.vm.network :private_network, ip:"192.168.50.14", virtualbox__intnet: "intnet"
    v.vm.network :forwarded_port, guest: 80, host: 9001
  end

  # cache002
  config.vm.define :cache002 do |v|
    v.vm.box = "centos67"
    v.vm.hostname = "cache002"
    v.vm.network :private_network, ip:"192.168.50.15", virtualbox__intnet: "intnet"
    v.vm.network :forwarded_port, guest: 80, host: 9002
  end

end
