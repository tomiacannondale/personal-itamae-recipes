directory "#{node[:user_dir]}/.ssh" do
  owner node[:current_user]
  group node[:user_group]
  mode '700'
end
