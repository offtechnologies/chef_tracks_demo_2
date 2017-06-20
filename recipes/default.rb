#
# Cookbook:: chef_tracks_demo_2
# Recipe:: default
#
# Copyright:: 2017, OFF Technologies, All Rights Reserved.

# setup apt, basic packages, etc
include_recipe 'chef_tracks_demo_2::system_setup'
# install and setup mysql
include_recipe 'chef_tracks_demo_2::mysql_setup'
# install TracksApp
include_recipe 'chef_tracks_demo_2::tracks_setup'
# install and setup nginx proxy
include_recipe 'chef_tracks_demo_2::nginx_setup'
# install and configure basic server security
include_recipe 'chef_tracks_demo_2::security_setup'
