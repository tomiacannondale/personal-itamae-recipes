case node[:platform]
when 'debian', 'ubuntu', 'mint'
when 'osx', 'darwin'
  cask 'slack'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
