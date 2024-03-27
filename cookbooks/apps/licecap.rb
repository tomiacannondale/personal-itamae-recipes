case node[:platform]
when 'debian', 'ubuntu', 'mint'
when 'osx', 'darwin'
  cask 'ffmpeg'
  cask 'LICEcap'
when 'redhat', 'fedora', 'amazon' # redhad includes CentOS
end
