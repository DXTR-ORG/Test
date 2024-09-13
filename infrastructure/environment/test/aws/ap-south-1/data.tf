data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# Retrieves information about the AWS account and region
#
# The data.aws_caller_identity.current resource gathers details
# related to the AWS account currently being utilized.
#
# The data.aws_region.current resource fetches information about
# the region configuration defined in the provider block.