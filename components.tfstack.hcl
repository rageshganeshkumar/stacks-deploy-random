variable "prefix_override" {
  type = string
}

variable "test_message" {
  type = string
}

component "random" {
  source = "./random"

  providers = {
    random = provider.random.this
  }

  inputs = {
    prefix_override = var.prefix_override
    test_message    = var.test_message
  }
}
