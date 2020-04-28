# itamae recipe for local env

Target is desktop os(MacOS or ubuntu not server)

## Usage

1. install xcode
2. install homebrew
3. clone this repository
4. modify node.yml(`current_user` and Change from `anyenv:users:vagrant` to `anyenv:users:<your username>` )
5. run itamae

```
> bundle exec itamae local roles/default.rb -y node.yml
```

```
> bundle exec itamae ssh --vagrant --host default --port 2222 roles/default.rb -y node.yml --ssh-config=sshconfig
```
