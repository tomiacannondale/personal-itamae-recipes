case node[:platform]
when "debian", "ubuntu", "mint"
  package "locales"

  execute "modify locale.gen" do
    user "root"
    not_if "echo $LANG | grep 'ja_JP.UTF-8'"

    command <<-COMMAND
      sed -i -E "s/# ja_JP.UTF-8/ja_JP.UTF-8/" /etc/locale.gen
      locale-gen
      update-locale LANG=ja_JP.UTF-8
    COMMAND
  end
when "osx", "darwin"
when "redhat", "fedora", "amazon" # redhad includes CentOS
end
