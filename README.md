# chef_tracks_demo_2

# tracks_demo
##### This is experimental stuff - Do not use in production!
Chef cookbook with recipes needed to deploy Tracks (Ruby on Rails) application to a server running Ubuntu 14.04. Tracks is a web-based application to help you implement David Allen’s Getting Things Done™ methodology. To learn more on Tracks please visit [this website][tracks]
#### 1.0 - 2017-06-20
*  Initial commit
*  latest stable release of Tracks (v2.3.0)
*  ruby 2.1  - compiled from source
*  mysql - installed via chef-maintained cookbooks
*  WEBrick via init via community-maintained cookbooks
*  Nginx reverse proxy in front of the Rails app
*  basic ufw and ssh hardening via chef-maintained cookbooks
#### Requirements
* Chef Development Kit Version: 1.4.3
* Chef-client version: 12.19.36
* berks version: 5.6.4
* kitchen version: 1.16.0
* inspec version: 1.25.1
* Vagrant 1.8.5
#### Usage
    git clone https://github.com/offtechnologies/chef_tracks_demo_2
    cd chef_tracks_demo_2
    kitchen converge

[tracks]:<http://www.getontracks.org/>
