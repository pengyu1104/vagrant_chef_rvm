#
# Cookbook Name:: rvm
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "update-upgrade" do
  cwd "/home/vagrant" 
  user "vagrant"
  environment ({'HOME' => '/home/vagrant', 'USER' => 'vagrant'})
  command "pwd"

  action :run
end

