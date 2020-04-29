require 'itamae/plugin/resource/cask'

include_recipe './dropbox.rb'
include_recipe './firefox.rb'
include_recipe './google_chrome.rb'
include_recipe './tex.rb'
include_recipe './pt.rb'
include_recipe './heroku.rb'
include_recipe './vagrant.rb'
include_recipe './vlc.rb'

package 'git'
package 'cmigemo'
package 'graphviz'
package 'zsh'
package 'tree'

package 'peco'
package 'source-highlight'
package 'jq'
package 'autojump'

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
