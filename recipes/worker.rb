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


template "/tmp/sqs2dynamo.sh" do
  source "sqs2dynamo.sh.erb"
  owner "root"
  group "root"
  mode 0755
end


cron "sqs2dynamo.sh" do
  minute "0"
  hour "10-17"
  day "*"
  month "*"
  weekday "1-5"
  command "/tmp/sqs2dynamo.sh"
end
