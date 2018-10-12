#
# Cookbook:: git
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'git' do
  action:install
end

package 'apache2' do
  action:install
end
