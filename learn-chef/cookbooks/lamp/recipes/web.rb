#
# Cookbook:: lamp
# Recipe:: web
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Create the document root directory.

directory node['lamp']['web']['document_root'] do
  recursive true
end

# Add the site configuration.

httpd_config 'default' do
  source 'default.conf.erb'
end
