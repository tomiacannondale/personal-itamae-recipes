execute 'add apt-key' do
  user 'root'
  command 'curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -'
end

execute 'Add repository source' do
  user 'root'
  command <<-SHELL
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
    apt-get update -y
  SHELL
end

package 'yarn'
