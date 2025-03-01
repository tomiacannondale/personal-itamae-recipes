execute "install emacs" do
  command <<-"SHELL"
  wget http://ftp.jaist.ac.jp/pub/GNU/emacs/emacs-29.4.tar.xz
  tar zxf emacs-29.4.tar.gz
  cd emacs-29.4

  export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"
  export PKG_CONFIG_PATH="/opt/homebrew/opt/sqlite/lib/pkgconfig"

  ./configure --without-xim --with-json --with-tree-sitter --with-native-compilation
  make
  make install
  SHELL
end
