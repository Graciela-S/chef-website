
#
# Cookbook:: lamp
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd' do
   action :install
end 

service 'httpd' do
   action [:enable, :start]
end

web_app "ChefPro" do
   server_name node ['hostname']
   server_aliases [node['fqdn'], "chefpro.com"
   docroot "/srv/www/chefpro"
end

include_recipe 'lamp::web' 

