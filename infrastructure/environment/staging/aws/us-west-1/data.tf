provider "aws" {}

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}


# The provider block is used to configure the AWS provider.
# The aws_caller_identity data source is used to fetch information about the AWS account.
# The aws_region data source is used to fetch information about the configured AWS region.