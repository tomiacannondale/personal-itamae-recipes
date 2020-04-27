# https://nokogiri.org/tutorials/installing_nokogiri.html

case node[:platform]
when 'debian', 'ubuntu', 'mint'
  package 'build-essential'
  package 'patch'
  package 'zlib1g-dev'
  package 'liblzma-dev'
when 'osx', 'darwin'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
  package 'make'
  package 'gcc'
  package 'rpm-build'
  package 'zlib-devel'
end
