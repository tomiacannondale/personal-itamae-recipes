require 'itamae/plugin/resource/cask'

case node[:platform]
when 'debian', 'ubuntu', 'mint'
  package "libsqlite3-dev"
  package "libmysqlclient-dev"
when 'osx', 'darwin'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
