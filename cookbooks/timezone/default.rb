execute "NTP service activate" do
  not_if "timedatectl status | grep 'NTP service: active'"
  command "timedatectl set-ntp true"
  user "root"
end

execute "set timezone" do
  not_if "timedatectl status | grep 'Time zone: Asia/Tokyo (JST, +0900)'"
  command "timedatectl set-timezone Asia/Tokyo"
  user "root"
end
