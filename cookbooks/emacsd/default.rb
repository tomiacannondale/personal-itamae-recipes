git "#{node[:user_dir]}/.emacs.d" do
  repository node[:emacsd][:repository]
  user node[:current_user]
end

directory "#{node[:user_dir]}/.emacs.d/elisp" do
  user node[:current_user]
end

directory "#{node[:user_dir]}/.emacs.d/etc/snippets" do
  user node[:current_user]
end

git "#{node[:user_dir]}/.emacs.d/elisp/exec-path-from-shell" do
  repository "https://github.com/purcell/exec-path-from-shell"
  user node[:current_user]
end

git "#{node[:user_dir]}/.emacs.d/etc/snippets/ruby-mode" do
  repository node[:emacsd][:ruby_mode_snippets_repository]
  user node[:current_user]
end

git "#{node[:user_dir]}/.emacs.d/etc/snippets/rspec-mode" do
  repository node[:emacsd][:rspec_mode_snippets_repository]
  user node[:current_user]
end
