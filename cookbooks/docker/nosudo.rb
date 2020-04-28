unless ['osx', 'darwin'].include?(node[:platform])
  execute 'no need sudo running docker' do
    user 'root'
    command <<-COMMAND
      groupadd docker
      usermod -aG docker #{node[:current_user]}
    COMMAND
  end
end
