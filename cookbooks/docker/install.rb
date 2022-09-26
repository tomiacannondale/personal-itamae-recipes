require 'itamae/plugin/resource/cask'

case node[:platform]
when 'debian', 'ubuntu', 'mint'
  execute 'Add Docker official GPG key' do
    user 'root'
    command "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
    not_if "apt-key list | grep Docker"
  end

  execute 'set up the stable repository' do
    user 'root'
    command <<-COMMAND
      add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    COMMAND
    not_if "grep '^[^#].\+download.docker.com' /etc/apt/sources.list"
  end

  execute 'update' do
    user 'root'
    command "apt-get update"
  end

  package 'docker-ce'
  package 'docker-ce-cli'
  package 'containerd.io'
when "osx", "darwin"
  cask 'docker'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
  package "yum-utils"

  execute "Add Docker official repository" do
    user "root"
    command <<-COMMAND
      yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    COMMAND
    not_if "test -f /etc/yum.repos.d/docker-ce.repo"
  end

  package "docker-ce"
  package "docker-ce-cli"
  package "containerd.io"
  package "docker-compose-plugin"
end
