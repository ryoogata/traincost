#
# Cookbook Name:: traincost
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{
  nkf crontabs
}.each do |package_name|
  package "#{package_name}" do
    action :install
  end
end


template "#{node['traincost']['sqs2dynamo.sh']['_PATH']}" do
  source "sqs2dynamo.sh.erb"
  owner "root"
  group "root"
  mode 0755
end


cron "sqs2dynamo.sh" do
  minute "#{node['traincost']['crontab']['_MINUTE']}"
  hour "#{node['traincost']['crontab']['_HOUR']}"
  day "#{node['traincost']['crontab']['_DAY']}"
  month "#{node['traincost']['crontab']['_MONTH']}"
  weekday "#{node['traincost']['crontab']['_WEEKDAY']}"
  command "#{node['traincost']['sqs2dynamo.sh']['_PATH']}"
end
