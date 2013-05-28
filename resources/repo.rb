#
# Cookbook Name:: stash
# Resource:: repo
#
# Copyright 2013-2014, Nordstrom, Inc.
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

actions :create, :delete
default_action :create

attribute :server, :kind_of => String
attribute :project, :kind_of => String
attribute :repo, :kind_of => String, :name_attribute => true
attribute :user, :kind_of => String
attribute :pull_request_approvers, :kind_of => Integer, :default => 0
attribute :pull_request_builds, :kind_of => Integer, :default => 0
attribute :chef_vault_version, :kind_of => String, :default => "1.2.0"
attribute :chef_vault_source, :kind_of => String, :default => "http://rubygems.org"
attribute :nokogiri_version, :kind_of => String, :default => "1.5.9"
attribute :nokogiri_source, :kind_of => String, :default => "http://rubygems.org"

attr_accessor :exists
