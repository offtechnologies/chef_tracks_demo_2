# system_setup
default['system_setup']['timezone']      = 'Europe/Berlin'
default['system_setup']['service_name']  = 'tracks'

# user_setup
default['user_setup']['user']            = node['system_setup']['service_name']

# mysql_setup
default['mysql_setup']['dbhost']         = '127.0.0.1'
default['mysql_setup']['dbname']         = node['system_setup']['service_name']
default['mysql_setup']['dbadmin']        = node['user_setup']['user']
