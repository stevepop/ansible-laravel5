VAGRANTFILE_API_VERSION = "2"

path = "#{File.dirname(__FILE__)}"

require 'yaml'
require path + '/vagrant/setup.rb'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  Vagrantsetup.configure(config, YAML::load(File.read('Vagrantconf.yml')))
end

