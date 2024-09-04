module "bane" {
  backend_type = ""

  config = ""

  env_name = "tests-eu-south-1"

  layer_name = "tests-eu-south-1"

  module_name = "bane"

  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/external_state?ref=main"
}

output "outputs" {
  value = module.bane.outputs
}

# Documentation:
# This Terraform configuration defines a module called "bane", which sources its configuration from a GitHub repository.
# The module's parameters include `backend_type`, `config`, `env_name`, `layer_name`, and `module_name`.
# An output block is defined to expose the outputs of the `bane` module.