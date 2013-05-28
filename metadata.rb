name              "stash"
maintainer        "Brian Flad"
maintainer_email  "bflad@wharton.upenn.edu"
license           "Apache 2.0"
description       "Installs/Configures Atlassian Stash"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "2.10.2"
recipe            "stash", "Installs/Configures Atlassian Stash"
recipe            "stash::apache2", "Installs/Configures Atlassian Stash behind Apache2"
recipe            "stash::upgrade", "Upgrades Atlassian Stash"

%w{ amazon centos redhat scientific ubuntu }.each do |os|
  supports os
end

%w{ apache2 database git java mysql mysql_connector perl postgresql }.each do |cb|
  depends cb
end
