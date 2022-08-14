execute 'install' do
  user 'root'
  command "curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs"
end
