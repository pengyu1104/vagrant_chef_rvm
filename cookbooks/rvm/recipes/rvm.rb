#
# Cookbook Name:: rvm
# Recipe:: rvm
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "rvm-install" do
  cwd "/home/vagrant" 
  user "vagrant"
  command "gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3"
  environment ({'HOME' => '/home/vagrant', 'USER' => 'vagrant'})
  action :run
end

execute "get-installer" do  
  cwd "/home/vagrant" 
  user "vagrant"
  command "\\curl -O https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer"
  environment ({'HOME' => '/home/vagrant', 'USER' => 'vagrant'})

end

execute "get-installer-asc" do
  cwd "/home/vagrant" 
  user "vagrant"
  command "\\curl -O https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer.asc"
  environment ({'HOME' => '/home/vagrant', 'USER' => 'vagrant'})

end

execute "verify" do
cwd "/home/vagrant" 
  user "vagrant"
  command "gpg --verify rvm-installer.asc"
  environment ({'HOME' => '/home/vagrant', 'USER' => 'vagrant'})

end
 
 execute "install" do
 cwd "/home/vagrant" 
 user "vagrant"
 command "bash rvm-installer stable"
 environment ({'HOME' => '/home/vagrant', 'USER' => 'vagrant'})
end