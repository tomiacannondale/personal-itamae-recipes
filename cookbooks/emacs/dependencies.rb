case node[:platform]
when 'debian', 'ubuntu', 'mint'
  package "texinfo"
  package "libx11-dev"
  package "libxpm-dev"
  package "libjpeg-dev"
  package "libpng-dev"
  package "libgif-dev"
  package "libtiff-dev"
  package "libgtk-3-dev"
  package "gnutls-bin"
  package "libgnutls28-dev"
when "osx", "darwin"
  package "texinfo"
  package "gnutls"
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
