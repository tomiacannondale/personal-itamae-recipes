require 'itamae/plugin/resource/cask'

case node[:platform]
when 'debian', 'ubuntu', 'mint'
when 'osx', 'darwin'
  cask 'vlc'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
