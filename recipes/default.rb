#
# Cookbook:: chef_tracks_demo_2
# Recipe:: default
#
# Copyright:: 2017, OFF Technologies, All Rights Reserved.

# setup apt, basic packages, etc
include_recipe 'chef_tracks_demo_2::system_setup'
# install and setup mysql
include_recipe 'chef_tracks_demo_2::mysql_setup'
