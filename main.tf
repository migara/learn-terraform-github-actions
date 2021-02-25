terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  #   required_version = "~> 0.15"
}

resource "random_pet" "foo" {}

output "foo" {
  value = random_pet.foo.id
}


