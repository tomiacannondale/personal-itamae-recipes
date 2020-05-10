require 'itamae/plugin/resource/cask'

case node[:platform]
when 'debian', 'ubuntu', 'mint'
when 'osx', 'darwin'
  cask 'vagrant'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end

execute 'enable shared folder' do
  not_if 'vagrant plugin list | grep vagrant-vbguest'
  command 'vagrant plugin install vagrant-vbguest'
end
