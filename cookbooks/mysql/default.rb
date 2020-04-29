case node[:platform]
when 'debian', 'ubuntu', 'mint'
when 'osx', 'darwin'
  package 'mysql'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
  package 'mysql-client'
end
