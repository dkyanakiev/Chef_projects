#
# Cookbook:: awesome_customers_rhel
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'selinux::permissive'
include_recipe 'awesome_customers_rhel::firewall'
include_recipe 'awesome_customers_rhel::web_user'
include_recipe 'awesome_customers_rhel::web'
include_recipe 'awesome_customers_rhel::database'
