# https://docs.docker.com/get-docker/

require 'itamae/plugin/resource/cask'

include_recipe './dependencies.rb'
include_recipe './install.rb'
include_recipe './enable.rb'
include_recipe './nosudo.rb'
