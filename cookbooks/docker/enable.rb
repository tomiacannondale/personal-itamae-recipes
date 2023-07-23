unless ['osx', 'darwin'].include?(node[:platform])
  service "docker" do
    action [:enable, :start]
  end
end
