execute "install emacs" do
  not_if "test -e /usr/local/bin/emacs"
  command <<-"SHELL"
  wget http://ftp.jaist.ac.jp/pub/GNU/emacs/emacs-26.3.tar.gz
  tar zxvf emacs-26.3.tar.gz
  cd emacs-26.3
  ./configure --with-x --without-xim
  make
  make install
  SHELL
end
