#
# Cookbook Name:: stash
# Attributes:: apache2
#
# Copyright 2012-2013
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['stash']['apache2']['access_log']         = ""
default['stash']['apache2']['error_log']          = ""
default['stash']['apache2']['port']               = 80
default['stash']['apache2']['virtual_host_alias'] = node['fqdn']
default['stash']['apache2']['virtual_host_name']  = node['hostname']

default['stash']['apache2']['ssl']['access_log']       = ""
default['stash']['apache2']['ssl']['chain_file']       = ""
default['stash']['apache2']['ssl']['error_log']        = ""
default['stash']['apache2']['ssl']['port']             = 443

case node['platform_family']
when 'rhel'
  default['stash']['apache2']['ssl']['certificate_file'] = "/etc/pki/tls/certs/localhost.crt"
  default['stash']['apache2']['ssl']['key_file']         = "/etc/pki/tls/private/localhost.key"
else
  default['stash']['apache2']['ssl']['certificate_file'] = "/etc/ssl/certs/ssl-cert-snakeoil.pem"
  default['stash']['apache2']['ssl']['key_file']         = "/etc/ssl/private/ssl-cert-snakeoil.key"
end
