git "#{node[:user_dir]}/.anyenv/envs/rbenv/plugins/rbenv-binstubs" do
  repository "https://github.com/ianheggie/rbenv-binstubs"
  user node[:current_user]
end
