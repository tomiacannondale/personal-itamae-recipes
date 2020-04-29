# For emacs-id-manager

case node[:platform]
when 'debian', 'ubuntu', 'mint'
when 'osx', 'darwin'
  package 'gnupg'
  package 'gpg2'
  package 'pinentry-mac'

  remote_file "#{node[:user_dir]}/.gnupg/gpg-agent.conf" do
    source 'files/gpg-agent.conf'
    owner node[:current_user]
    group node[:user_group]
  end
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
