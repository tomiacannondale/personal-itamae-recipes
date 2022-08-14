case node[:platform]
when 'debian', 'ubuntu', 'mint'
  execute 'set' do
    user 'root'
    command (<<-EOS).gsub(/^\s+/, '')
      cat <<'EOF' | debconf-set-selections
        mysql-cluster-community-server mysql-cluster-community-server/root-pass password mypassword
        mysql-cluster-community-server mysql-cluster-community-server/re-root-pass password mypassword
      EOF
    EOS
  end

  execute 'install' do
    command <<-SHELL
      DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-community-server
    SHELL
  end

  # package 'mysql-community-server' # client too
  # you should below
  #   mysql as root (with sudo, without password) and set password for root, last run mysql_secure_installation
  #      > sudo mysql -uroot
  #      mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password by '<password>'
  #      > sudo mysql_secure_installation
when 'osx', 'darwin'
  package 'mysql'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
  package 'mysql-client'
end
