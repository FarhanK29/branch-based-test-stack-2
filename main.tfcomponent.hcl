variable "prefix" {
  type = string
}

variable "instances" {
  type = number
}

required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.9.0"
  }

  null = {
    source  = "hashicorp/null"
    version = "~> 3.3.0"
  }
}

provider "random" "this" {}
provider "null" "this" {}

component "pet" {
  source = "./pet"

  providers = {
    random = provider.random.this
  }
}