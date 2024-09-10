"module" "AWS SNS" {
  "content_based_deduplication" = false

  "env_name" = "staging-ap-south-1"

  "fifo" = false

  "layer_name" = "staging-ap-south-1"

  "module_name" = "AWS SNS"

  "sqs_subscribers" = []

  "source" = "git:: https//github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sns?ref=main"
}

"output" "kms_arn" {
  "value" = "${module.AWS SNS.kms_arn}"
}

"output" "topic_arn" {
  "value" = "${module.AWS SNS.topic_arn}"
}