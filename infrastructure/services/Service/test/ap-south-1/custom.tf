variable "sdk" {
  description = "Name of the SDK resource."
  type        = string
}

resource "sdk_resource" "example" {
  name = var.sdk
}