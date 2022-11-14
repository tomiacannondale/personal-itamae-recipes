require 'itamae/plugin/resource/cask'

include_recipe './dropbox.rb'
include_recipe './firefox.rb'
include_recipe './google_chrome.rb'
include_recipe './tex.rb'
include_recipe './pt.rb'
include_recipe './heroku.rb'
include_recipe './vagrant.rb'
include_recipe './vlc.rb'
include_recipe './wget.rb'

include_recipe './cmigemo.rb'
include_recipe './graphviz.rb'
include_recipe './zsh.rb'
include_recipe './tree.rb'
include_recipe './zsh.rb'
include_recipe './tree.rb'

include_recipe './peco.rb'
include_recipe './source-highlight.rb'
include_recipe './jq.rb'
include_recipe './autojump.rb'

# package 'chromedriver'

case node[:platform]
when 'debian', 'ubuntu', 'mint'
when "osx", "darwin"
  package 'awk'
  package 'gnu-tar'
  package 'nkf'

  package 'youtube-dl'
  cask 'android-file-transfer'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end

include_recipe './virtualbox.rb'
