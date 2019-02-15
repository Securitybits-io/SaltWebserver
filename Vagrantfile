Vagrant.configure("2") do |config|
  config.vm.define "salt" do |salt|
    salt.vm.box = "ubuntu/bionic64"
    salt.vm.hostname = "salt"
    salt.vm.network "private_network", ip: "192.168.6.10"
    salt.vm.synced_folder "saltstack/", "/srv"
    salt.vm.provision :shell, path: "provision-scripts/bootstrap-salt.sh"
  end
  config.vm.define "nginx" do |nginx|
    nginx.vm.box = "ubuntu/bionic64"
    nginx.vm.hostname = "nginx"
    nginx.vm.network "private_network", ip: "192.168.6.11"
    nginx.vm.provision :shell, path: "provision-scripts/bootstrap-nginx.sh"
  end
  config.vm.define "apache" do |apache|
    apache.vm.box = "ubuntu/bionic64"
    apache.vm.hostname = "apache"
    apache.vm.network "private_network", ip: "192.168.6.12"
    apache.vm.provision :shell, path: "provision-scripts/bootstrap-apache.sh"
  end
  config.vm.define "ghost" do |ghost|
    ghost.vm.box = "ubuntu/bionic64"
    ghost.vm.hostname = "ghost"
    ghost.vm.network "private_network", ip: "192.168.6.13"
    ghost.vm.provision :shell, path: "provision-scripts/bootstrap-ghost.sh"
  end
end
