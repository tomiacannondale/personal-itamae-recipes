case node[:platform]
when 'debian', 'ubuntu', 'mint'
when 'osx', 'darwin'
  cask 'sequel-pro'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
