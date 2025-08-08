# https://aider.chat/docs/install.html
execute 'install aider' do
  command <<-"SHELL"
  python -m pip install aider-install
  aider-install
  SHELL
end
