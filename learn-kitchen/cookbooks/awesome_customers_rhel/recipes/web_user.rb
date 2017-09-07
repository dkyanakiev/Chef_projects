#
# Cookbook:: awesome_customers_rhel
# Recipe:: web_user
#
# Copyright:: 2017, The Authors, All Rights Reserved.


group node['awesome_customers_rhel']['group']

user node['awesome_customers_rhel']['user'] do
  group node['awesome_customers_rhel']['group']
  system true
  shell '/bin/bash'
end
