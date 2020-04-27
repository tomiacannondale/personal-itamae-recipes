require 'itamae/plugin/resource/cask'

case node[:platform]
when 'debian', 'ubuntu', 'mint'
  # default installed
when 'osx', 'darwin'
  cask 'firefox'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
