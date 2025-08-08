require 'itamae/plugin/resource/cask'

case node[:platform]
when 'debian', 'ubuntu', 'mint'
  package 'fonts-ricty-diminished'
when "osx", "darwin"
  execute 'tap homebrew/cask-fonts' do
    command 'brew tap homebrew/cask-fonts'
    user node[:current_user]
    not_if 'brew tap  | grep cask-fonts'
  end

  cask 'font-ricty-diminished'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
