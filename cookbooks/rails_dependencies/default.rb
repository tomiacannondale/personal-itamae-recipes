case node[:platform]
when 'debian', 'ubuntu', 'mint'
  package "libsqlite3-dev"
  package "libmysqlclient-dev"
  package 'chromium-chromedriver'
when 'osx', 'darwin'
  package 'chromedriver'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
