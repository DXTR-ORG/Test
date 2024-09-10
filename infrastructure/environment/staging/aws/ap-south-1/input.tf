variable "API_KEY" {
  type        = string
  default     = "skdasd"
  description = "API Key for the application"
}

output "API_KEY" {
  value = var.API_KEY
}