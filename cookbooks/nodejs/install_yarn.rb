execute 'add apt-key' do
  not_if "apt-key list | grep yarn"
  user 'root'
  command 'curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -'
end

execute 'Add repository source' do
  not_if "ls /etc/apt/sources.list.d/yarn.list"
  user 'root'
  command <<-SHELL
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
    apt-get update -y
  SHELL
end

package 'yarn'
