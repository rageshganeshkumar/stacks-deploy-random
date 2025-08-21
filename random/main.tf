variable "prefix_override" {
  description = "Override prefix for random pets from varset"
  type        = string
  default     = "hello-world"
}

variable "test_message" {
  description = "Test message from varset"
  type        = string
  default     = "default-message"
}

resource "random_pet" "increase_resource_count" {
  for_each = { for idx in range(1, 11) : idx => idx }

  prefix = "${var.prefix_override}-${each.key}"
  length = 4
}

# Output to show the varset values are being used
output "test_message" {
  value = var.test_message
}

output "prefix_used" {
  value = var.prefix_override
}
