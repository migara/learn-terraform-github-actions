terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }

  backend "remote" {
    organization = "migara"

    workspaces {
      prefix = "gh-actions-demo-"
    }
  }

}

resource "random_pet" "foo" {}

output "foo" {
  value = random_pet.foo.id
}
