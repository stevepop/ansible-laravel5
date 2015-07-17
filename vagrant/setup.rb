class Vagrantsetup
  def Vagrantsetup.configure(config, settings)
    # Configure The Box
    config.vm.box = "ubuntu/trusty64"
    config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

    # Configure A Private Network IP
    config.vm.network :private_network, ip: settings["ip"] ||= "192.168.200.10"
    config.ssh.forward_agent = true

    # Configure A Few VirtualBox Settings
    config.vm.provider "virtualbox" do |vb|
      vb.name = settings["hostname"]
      vb.customize ["modifyvm", :id, "--memory", settings["memory"] ||= "2048"]
      vb.customize ["modifyvm", :id, "--cpus", settings["cpus"] ||= "1"]
      vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]

      vb.gui = false
    end

    # Configure Port Forwarding To The Box
    config.vm.network "forwarded_port", guest: 80, host: 8001
    config.vm.network "forwarded_port", guest: 3306, host: 33061
    config.vm.network "forwarded_port", guest: 5432, host: 54321

    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "vagrant/ansible/playbook_dev.yml"
        ansible.inventory_path = "vagrant/ansible/inventories/dev"
        ansible.verbose = "v"
        ansible.limit = "all"
        ansible.extra_vars = {
            private_interface: "192.168.200.10"
        }
    end

    config.vm.synced_folder "./", "/vagrant", type: "nfs"
  end
end