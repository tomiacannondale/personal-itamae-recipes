# itamae recipe for local env

Target is desktop os(MacOS or ubuntu not server)

## Usage

1. install xcode (or command line tools)
2. install homebrew
3. enable brew cask
3. clone this repository
4. modify node.yml(`current_user` and Change from `anyenv:users:vagrant` to `anyenv:users:<your username>` )
5. run itamae

```
> bundle exec itamae local roles/default.rb -y node.yml
```

```
> bundle exec itamae ssh --vagrant --host default --port 2222 roles/default.rb -y node.yml --ssh-config=sshconfig
```

## Troubles

### double yarn ###

#### problem ####

yarn command is not found!

Upper rails(5.2?) require yarn, so I install yarn as global by npm.
I create new rails project, and run `rails webpack:install` , then $RBENV_ROOT/shims/yarn is created. (what?)

#### Solution

run bundle binstubs and (maybe rbenv rehash and nodenv rehash).

```
rails project > bundle binstubs --all --path=.bundle/bin
any directory > rbenv rehash
any directory > nodenev rehash
```

### virutalbox installation is fail ###

During installing virtualbox, fail with blow message.

```
virtualbox requires a kernel extension to work.
ERROR :         stdout | If the installation fails, retry after you enable it in:
ERROR :         stdout |   System Preferences -> Security & Privacy -> General
ERROR :         stdout |
ERROR :         stdout | For more information, refer to vendor documentation or this Apple Technical Note:
ERROR :         stdout |   https://developer.apple.com/library/content/technotes/tn2459/_index.html
...
```

after fail

     システム環境設定 -> セキュリティとプライバシー -> 一般

and Permmit virtualbox
