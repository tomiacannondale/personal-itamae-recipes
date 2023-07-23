require 'itamae/plugin/resource/cask'

case node[:platform]
when 'debian', 'ubuntu', 'mint'
  package 'uim-skk'
when "osx", "darwin"
  cask 'google-japanese-ime'
  cask 'aquaskk'

  user_aquaskk_dir = "\"#{node[:user_dir]}/Library/Application Support/AquaSKK/\""
  user_keymap_path = "#{user_aquaskk_dir}keymap.conf"

  # ?
  execute 'keymap' do
    not_if "ls #{user_keymap_path}"
    command <<-COMMAND
      cp "/Library/Input Methods/AquaSKK.app/Contents/Resources/keymap.conf" #{user_aquaskk_dir}
      sed -i.back -Ee 's/(SKK_JMODE.+$)/\\1||ctrl::0/' #{user_keymap_path}
    COMMAND
  end

when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end

