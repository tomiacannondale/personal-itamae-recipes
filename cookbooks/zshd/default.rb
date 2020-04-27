execute "clone zsh.d" do
  not_if "test -e $HOME/.zshrc"
  user node[:current_user]

  command <<-SHELL
    git clone #{node[:zshd][:repository]} #{node[:user_dir]}/.zsh.d
    ln -s #{node[:user_dir]}/.zsh.d/zshrc #{node[:user_dir]}/.zshrc
  SHELL
end
