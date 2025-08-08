require 'itamae/plugin/resource/cask'

case node[:platform]
when 'osx', 'darwin'
  package 'font-hackgen-nerd'
  package 'font-hackgen'
  # 標準フォント,Serif フォント
  cask 'font-noto-serif-jp' # windowsのchromeの標準？
  # Sans Serif フォント
  cask 'font-noto-sans-jp' # windowsのchromeの標準？
end
