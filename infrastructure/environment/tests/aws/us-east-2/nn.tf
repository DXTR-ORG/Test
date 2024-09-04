module "nn" {
  # Enable or disable content-based deduplication for FIFO queues
  content_based_deduplication = false

  # The environment name for the configuration
  env_name = "tests-us-east-2"

  # FIFO queue related setting, true or false
  fifo = "jk"

  # Some setting, boolean expected
  fufa = false

  # The layer name for the configuration
  layer_name = "tests-us-east-2"

  # Another setting
  mo = "dfg"

  # The name of the module
  module_name = "nn"

  # List of SQS subscribers
  sqs_subscribers = ["sd"]

  # Source of the module
  source = "git::https://flyteorg.github.io/flyte?ref=main"
}