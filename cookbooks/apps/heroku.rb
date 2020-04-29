require 'itamae/plugin/resource/cask'

case node[:platform]
when 'debian', 'ubuntu', 'mint'
when 'osx', 'darwin'
  execute 'tap heroku/brew' do
    user node[:current_user]
    command "brew tap heroku/brew"
    not_if "brew tap | grep heroku/brew"
  end
  package 'heroku/brew/heroku'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
