required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }
}

provider "random" "this" {}
