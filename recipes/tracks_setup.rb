#
# Cookbook:: chef_tracks_demo_2
# Recipe:: tracks_setup
#
# Copyright:: 2017, OFF Technologies, All Rights Reserved.
########################################################################################################
# tracks_setup - requires application_ruby and application_git cookbooks in metadata.rb ....
########################################################################################################

db_secret       = data_bag_item('passwords', 'mysql')
token_secret    = data_bag_item('passwords', 'token')
myapp           = node['system_setup']['dest_dir']

application myapp.to_s do
  poise_service_user node['user_setup']['user']
  # git clone Tracks (latest stable) repo
  git myapp.to_s do
    # user 'tracks'
    destination node['system_setup']['dest_dir']
    repository node['tracks_setup']['tracks_repo']
    reference node['tracks_setup']['tracks_version']
  end

  # install Ruby
  ruby_runtime myapp.to_s do
    provider :ruby_build
    version node['ruby_setup']['ruby_version']
  end

  # update site.yml
  template "#{node['system_setup']['dest_dir']}/config/site.yml" do
    source 'site.yml.erb'
    user node['user_setup']['user']
    mode '0755'
    variables(
      secret_token: token_secret['token_value'],
      time_zone: node['system_setup']['timezone']
    )
  end

  # bundle install
  bundle_install myapp.to_s do
    path node['system_setup']['dest_dir']
    deployment true
    without %w(development test)
  end

  # database settings for rails
  rails myapp.to_s do
    database(database: node['mysql_setup']['dbname'],
             adapter: node['mysql_setup']['dbadapter'],
             username: node['mysql_setup']['dbadmin'],
             password: db_secret['admin_password'],
             host: node['mysql_setup']['dbhost'])
    secret_token token_secret['token_value']
    migrate true
  end

  # init service settings
  poise_service "#{node['system_setup']['service_name']}-web" do
    command 'bundle exec rails server -e production'
    directory node['system_setup']['dest_dir']
    environment PATH: '/opt/ruby_build/builds/srv/tracks/bin/'
  end
end
