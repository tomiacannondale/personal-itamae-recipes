case node[:platform]
when 'debian', 'ubuntu', 'mint'
  package 'libmysqlclient-dev'
when 'osx', 'darwin'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
  package "mysql-devel"
end
