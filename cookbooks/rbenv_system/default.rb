include_recipe "rbenv::system"

remote_file '/etc/profile.d/rbenv.sh' do
  user 'root'
  group 'root'
  mode '644'
end
