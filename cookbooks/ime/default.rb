require 'itamae/plugin/resource/cask'

case node[:platform]
when 'debian', 'ubuntu', 'mint'
  package 'uim-skk'
when "osx", "darwin"
  cask 'google-japanese-ime'
  cask 'aquaskk'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end

