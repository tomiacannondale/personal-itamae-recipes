case node[:platform]
when 'debian', 'ubuntu', 'mint'
  package 'fonts-ricty-diminished'
when "osx", "darwin"
  package 'ricty'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end


