#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
#
package "httpd"

#  Templates
#file "/var/www/html/index.html" do
#  content "<h1>Hello, world!</h1>\n"
#
#
template '/var/www/html/index.html' do
  source 'index.html.erb'
end

service "httpd" do
  action [ :start, :enable]
end 
