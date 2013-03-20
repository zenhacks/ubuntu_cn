#
# Cookbook Name:: ubuntu_cn
# Recipe:: default
#
# Copyright (C) 2013 Steven Yang
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'

cookbook_file "/etc/apt/sources.list" do
  action :create
  notifies :run, "execute[apt-get-update]", :immediately
end

execute 'update source' do
  command "apt-get update"
end
