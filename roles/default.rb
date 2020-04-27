require 'pry'

case node[:platform]
when 'osx', 'darwin'
  node[:user_dir] = "/Users/#{node[:current_user]}"
else
  node[:user_dir] = "/home/#{node[:current_user]}"
end

# case node[:platform]
# when 'debian', 'ubuntu', 'mint'
#   execute 'apt-get update'
#   # execute 'apt-get upgrade'
# end

# include_recipe 'rbenv::dependency'
# include_recipe '../cookbooks/python_dependencies'
# include_recipe 'anyenv::users'
# include_recipe '../cookbooks/rbenv_plugins'

# include_recipe '../cookbooks/emacsd'
# include_recipe '../cookbooks/zshd'
# include_recipe '../cookbooks/apps'
# include_recipe '../cookbooks/docker'
# include_recipe '../cookbooks/mysql'
# include_recipe '../cookbooks/rails_dependencies'
# include_recipe '../cookbooks/redis'
# include_recipe '../cookbooks/emacs'
# include_recipe '../cookbooks/ricty'
# include_recipe '../cookbooks/ime'

include_recipe "../cookbooks/test"
