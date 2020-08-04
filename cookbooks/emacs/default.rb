include_recipe './dependencies.rb'

case node[:platform]
when 'debian', 'ubuntu', 'mint'
  include_recipe "./ubuntu.rb"
when "osx", "darwin"
  include_recipe "./mac.rb"
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end

