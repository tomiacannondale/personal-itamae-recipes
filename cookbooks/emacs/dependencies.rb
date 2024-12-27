package 'autoconf'
package 'automake'

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

  # for build
  package "libgccjit"
  package "pkg-config"
  package "jansson"
  package "libxml2"
  package "libpng"
  package "gcc"

  include_recipe '../gpg/default.rb'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
