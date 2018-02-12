Vagrant.configure("2") do |config|
  config.vm.define "web" do |web|
    web.vm.box = "precise64"
    web.vm.hostname = 'web'
    web.vm.box_url = "ubuntu/xenial64"

    web.vm.network :private_network, ip: "192.168.200.101"
    web.vm.network :forwarded_port, guest: 22, host: 10122, id: "ssh"


    web.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "web"]
    end
  end

  config.vm.define "db" do |db|
    db.vm.box = "precise64"
    db.vm.hostname = 'db'
    db.vm.box_url = "ubuntu/xenial64"

    db.vm.network :private_network, ip: "192.168.200.102"
    db.vm.network :forwarded_port, guest: 22, host: 10222, id: "ssh"

    db.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "db"]
    end
  end

end
