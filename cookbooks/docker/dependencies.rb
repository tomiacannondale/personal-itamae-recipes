case node[:platform]
when 'debian', 'mint'
when 'ubuntu'
  package 'apt-transport-https'
  package 'ca-certificates'
  package 'curl'
  package 'gnupg-agent'
  package 'software-properties-common'
when "osx", "darwin"
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
