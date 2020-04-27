require 'itamae/plugin/resource/cask'

case node[:platform]
when 'debian', 'ubuntu', 'mint'
  package 'texlive-lang-cjk'
  package 'xdvik-ja'
  package 'evince'
  package 'texlive-fonts-recommended'
  package 'texlive-fonts-extra'
when 'osx', 'darwin'
  cask 'mactex'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
