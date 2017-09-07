#
# Cookbook:: windows_pip_install
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

temp_pip_installer = Chef::Config[:file_cache_path] + '\\' + node['windows_install_pip']['pip_version']

remote_file temp_pip_installer do
  source node['windows_install_pip']['download']
  action :create_if_missing
end

execute "Install PIP on Windows Machine" do
  command "easy_install \"#{temp_pip_installer}\""
end
