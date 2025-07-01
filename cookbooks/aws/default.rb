require 'itamae/plugin/resource/cask'

package 'awscli'
package 'session-manager-plugin'
cask 'aws-vault-binary'

# aws-vaultとfzfを利用して、awsの Elastic Container Serviceのコンテナを対話的に選択アクセスする
execute 'ecs-exec' do
  not_if "test -e $HOME/bin/ecs-exec"
  execute "wget https://github.com/pocari/dotfiles/blob/master/bin/ecs-exec"
end
execute 'ecs-active-tasks' do
  not_if "test -e $HOME/bin/ecs-active-tasks"
  execute "wget https://github.com/pocari/dotfiles/blob/master/bin/ecs-active-tasks"
end
