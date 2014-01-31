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


template "/tmp/mail2sqs.sh" do
  source "mail2sqs.sh.erb"
  owner "root"
  group "root"
  mode 0755
end


template "/tmp/mail2sns.sh" do
  source "mail2sns.sh.erb"
  owner "root"
  group "root"
  mode 0755
end


template "/etc/aliases" do
  source "aliases.erb"
  owner "root"
  group "root"
  mode 0644
  notifies :run, "script[newaliases]", :immediately
end


script "newaliases" do
  interpreter "bash"
  user "root"
  code <<-EOH
    newaliases
  EOH
  action :nothing
end


script "rename_smrsh" do
  interpreter "bash"
  user "root"
  code <<-EOH
    mv /usr/sbin/smrsh /usr/sbin/smrsh.org
  EOH
  not_if {File.exists?("/usr/sbin/smrsh.org")}
end


link "/usr/sbin/smrsh" do
  to "/bin/sh"
end
