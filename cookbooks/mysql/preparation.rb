case node[:platform]
when 'debian', 'ubuntu', 'mint'
  remote_file "/tmp/mysql_pubkey.asc"

  execute 'Add gpg key' do
    command <<-SHELL
      apt-key add /tmp/mysql_pubkey.asc
    SHELL
    user 'root'
  end

  execute 'Add repository' do
    not_if 'ls /etc/apt/sources.list.d/mysql.list'
    user 'root'
    command <<-SHELL
      echo "deb http://repo.mysql.com/apt/debian/ bullseye mysql-8.0" > /etc/apt/sources.list.d/mysql.list
      apt-get update
    SHELL
  end

  execute 'Remove pubkey' do
    command <<-SHELL
      rm /tmp/mysql_pubkey.asc
    SHELL
  end

when 'osx', 'darwin'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
