name 'chef_tracks_demo_2'
maintainer 'OFF Technologies'
maintainer_email 'demo@offtechnologies.com'
license 'All Rights Reserved'
description 'Installs/Configures chef_tracks_demo_2'
long_description 'Installs/Configures chef_tracks_demo_2'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/chef_tracks_demo_2/issues'

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/chef_tracks_demo_2'
depends 'mysql', '~> 8.0'
depends 'mysql2_chef_gem', '~> 2.0'
depends 'database', '~> 6.1'
depends 'application', '~> 5.2.0'
depends 'application_ruby', '~> 4.1'
depends 'application_git', '~> 1.2'
depends 'poise-ruby-build', '~> 1.1.0'
depends 'unattended-upgrades', '~> 0.1.2'
depends 'fail2ban', '~> 4.0'
depends 'openssh', '~> 2.4.1'
depends 'firewall', '~> 2.6'
