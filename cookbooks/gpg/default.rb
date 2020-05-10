# For emacs-id-manager

case node[:platform]
when 'debian', 'ubuntu', 'mint'
when 'osx', 'darwin'
  package 'gnupg'
  package 'gpg2'
  package 'pinentry-mac'

  directory "#{node[:user_dir]}/.gnupg" do
    owner node[:current_user]
    group node[:user_group]
    mode '700'
  end

  remote_file "#{node[:user_dir]}/.gnupg/gpg-agent.conf" do
    source 'files/gpg-agent.conf'
    owner node[:current_user]
    group node[:user_group]
  end
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
