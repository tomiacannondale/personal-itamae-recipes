case node[:platform]
when 'debian', 'ubuntu', 'mint'
when 'osx', 'darwin'
  cask 'arc'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
