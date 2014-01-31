name             'traincost'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures traincost'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports "centos"

# == Recipes
# 

recipe "traincost",
  "Setup TrainCost Management System"

# == Attributes
# 
attribute "traincost",
  :display_name => "Setup TrainCost Management System",
  :type => "hash"

attribute "traincost/localhostname",
  :display_name => "",
  :description =>
     "",
  :required => "required",
  :recipes => [
    "traincost::server"
  ]

attribute "traincost/aliasuser",
  :display_name => "",
  :description =>
     "",
  :required => "required",
  :recipes => [
    "traincost::server"
  ]

attribute "aws/_ACCESS_KEY",
  :display_name => "",
  :description =>
     "",
  :required => "required",
  :recipes => [
    "traincost::server",
    "traincost::worker"
  ]

attribute "aws/_SECRET_KEY",
  :display_name => "",
  :description =>
     "",
  :required => "required",
  :recipes => [
    "traincost::server",
    "traincost::worker"
  ]

attribute "aws/sqs/_QUEUE_URL",
  :display_name => "",
  :description =>
     "",
  :required => "required",
  :recipes => [
    "traincost::server"
  ]

attribute "aws/sqs/_QUEUE_REGION",
  :display_name => "",
  :description =>
     "",
  :choice => ["eu-west-1","sa-east-1","us-east-1","ap-northeast-1","us-west-2","us-west-1","ap-southeast-1","ap-southeast-2"],
  :default => "us-west-1",
  :required => "optional",
  :recipes => [
    "traincost::server"
  ]

attribute "aws/sns/_TOPICS_ARN",
  :display_name => "",
  :description =>
     "",
  :required => "required",
  :recipes => [
    "traincost::server"
  ]

attribute "aws/sns/_SNS_REGION",
  :display_name => "",
  :description =>
     "",
  :choice => ["eu-west-1","sa-east-1","us-east-1","ap-northeast-1","us-west-2","us-west-1","ap-southeast-1","ap-southeast-2"],
  :default => "us-west-1",
  :required => "optional",
  :recipes => [
    "traincost::server"
  ]

attribute "aws/dynamodb/_REGION",
  :display_name => "",
  :description =>
     "",
  :choice => ["eu-west-1","sa-east-1","us-east-1","ap-northeast-1","us-west-2","us-west-1","ap-southeast-1","ap-southeast-2"],
  :default => "us-west-1",
  :required => "optional",
  :recipes => [
    "traincost::worker"
  ]

attribute "aws/dynamodb/_TABLE_NAME",
  :display_name => "",
  :description =>
     "",
  :required => "required",
  :recipes => [
    "traincost::worker"
  ]
