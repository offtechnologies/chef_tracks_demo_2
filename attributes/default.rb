# system_setup
default['system_setup']['timezone']      = 'Europe/Berlin'
default['system_setup']['service_name']  = 'tracks'
default['system_setup']['dest_dir']      = "/srv/#{node['system_setup']['service_name']}"
default['system_setup']['host_ip']       = '127.0.0.1'

# user_setup
default['user_setup']['user']            = node['system_setup']['service_name']

# mysql_setup
default['mysql_setup']['dbhost']         = '127.0.0.1'
default['mysql_setup']['dbname']         = node['system_setup']['service_name']
default['mysql_setup']['dbadmin']        = node['user_setup']['user']
default['mysql_setup']['dbadapter']      = 'mysql2'

# ruby_setup
default['ruby_setup']['ruby_version']    = '2.1'

# tracks_setup
default['tracks_setup']['tracks_repo']         = 'https://github.com/TracksApp/tracks.git'
default['tracks_setup']['tracks_version']      = 'v2.3.0'
