case node[:platform]
when 'debian', 'ubuntu', 'mint'
when 'osx', 'darwin'
  package 'redis'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
