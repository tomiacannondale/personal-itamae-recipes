case node[:platform]
when 'debian', 'ubuntu', 'mint'
when "osx", "darwin"
  package 'gnu-sed'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
