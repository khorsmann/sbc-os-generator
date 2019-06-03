# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  
  config.vm.define "builder-debian", autostart: true do |subconfig|
    subconfig.vm.box = "debian/stretch64"
    subconfig.vm.hostname = "sbcbuilder"
    subconfig.vm.synced_folder ".", "/vagrant", type: 'virtualbox',
      owner: "vagrant",
      group: "vagrant",
      mount_options: ["dmode=755,fmode=644"]
    subconfig.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.memory = "2048"
      vb.cpus = 4
    end
    subconfig.vm.provision "shell", path: "install-sbc-os.sh"
    
  end

  # ubuntu - not used
  #config.vm.define "builder-ubuntu", autostart: false do |subconfig|
  #  subconfig.vm.box = "ubuntu/bionic64"
  #  subconfig.vm.hostname = "sbcbuilder"
  #  subconfig.vm.synced_folder ".", "/vagrant", type: 'virtualbox',
  #  owner: "vagrant",
  #  group: "vagrant",
  #  mount_options: ["dmode=755,fmode=644"]
  #  subconfig.vm.provider "virtualbox" do |vb|
  #    vb.gui = true
  #    vb.memory = "2048"
  #  end
  #  
  #end

# apt-get update
# apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 40976EAF437D05B5
# apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 8B48AD6246925553
# apt-get install whois dirmngr multistrap reprepro binutils squashfs-tools genisoimage make linux-headers-$(uname -r)
# apt-get install genisoimage whois git zip

end

