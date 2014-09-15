# -*- mode: ruby -*-
# vi: set ft=ruby
#
# Vagrant Envirnment for learning/testing Solr
#

Vagrant.configure('2') do |config|
  config.vm.provision "puppet" do |puppet|
    puppet.module_path = "modules"
  end

  config.vm.define 'master' do |master|
    master.vm.box = 'centos64_puppet'
    master.vm.box_url ="http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-fusion503.box"
    master.vm.hostname = "solr.example.com"
    master.vm.network :forwarded_port, guest: 8983, host: 8983
  end

end
