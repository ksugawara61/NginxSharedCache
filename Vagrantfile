Vagrant.configure("2") do |config|

  config.vm.provision :file, source: "files/common", destination: "."
  config.vm.provision :shell, path: "scripts/common/hosts.sh"
  config.vm.provision :shell, path: "scripts/common/nginx_setup.sh"

  # lb001
  config.vm.define :lb001 do |v|
    v.vm.box = "centos67"
    v.vm.hostname = "lb001"
    v.vm.network :private_network, ip:"192.168.50.13", virtualbox__intnet: "intnet"
    v.vm.network :forwarded_port, guest: 80, host: 80
    v.vm.provision :file, source: "files/lb", destination: "."
    v.vm.provision :shell, path: "scripts/lb/lb_nginx_start.sh"
  end

  # cache001
  config.vm.define :cache001 do |v|
    v.vm.box = "centos67"
    v.vm.hostname = "cache001"
    v.vm.network :private_network, ip:"192.168.50.14", virtualbox__intnet: "intnet"
    v.vm.network :forwarded_port, guest: 80, host: 9001
    v.vm.provision :file, source: "files/cache", destination: "."
    v.vm.provision :shell, path: "scripts/cache/cache_nginx_start.sh"
  end

  # cache002
  config.vm.define :cache002 do |v|
    v.vm.box = "centos67"
    v.vm.hostname = "cache002"
    v.vm.network :private_network, ip:"192.168.50.15", virtualbox__intnet: "intnet"
    v.vm.network :forwarded_port, guest: 80, host: 9002
    v.vm.provision :file, source: "files/cache", destination: "."
    v.vm.provision :shell, path: "scripts/cache/cache_nginx_start.sh"
  end

end
