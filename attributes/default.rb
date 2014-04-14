default["traincost"]["localhostname"] = ""
default["traincost"]["aliasuser"] = ""
default["traincost"]["sqs2dynamo.sh"]["_PATH"] = "/tmp/sqs2dynamo.sh"
default["traincost"]["mail2sns.sh"]["_PATH"] = "/tmp/mail2sns.sh"
default["traincost"]["mail2sqs.sh"]["_PATH"] = "/tmp/mail2sqs.sh"


default["traincost"]["crontab"]["_MINUTE"] = "*/10"
default["traincost"]["crontab"]["_HOUR"] = "10-17"
default["traincost"]["crontab"]["_DAY"] = "*"
default["traincost"]["crontab"]["_MONTH"] = "*"
default["traincost"]["crontab"]["_WEEKDAY"] = "1-5"

default["aws"]["_ACCESS_KEY"] = ""
default["aws"]["_SECRET_KEY"] = ""

default["aws"]["sqs"]["_QUEUE_URL"] = ""
default["aws"]["sqs"]["_QUEUE_REGION"] = "us-west-1"

default["aws"]["sns"]["_TOPICS_ARN"] = ""
default["aws"]["sns"]["_SNS_REGION"] = "us-west-1"
default["aws"]["sns"]["_TRAINCOSTDONE_ARN"] = ""

default["aws"]["dynamodb"]["_REGION"] = "us-west-1"
default["aws"]["dynamodb"]["_TABLE_NAME"] = "TrainCost"
