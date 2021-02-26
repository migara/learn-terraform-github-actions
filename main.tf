terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "3.30.0"
    }
  }

  backend "s3" {
    bucket = "regional-training-2021-gh-actions"
    key    = "gh-actions-demo"
  }
}

resource "random_pet" "foo" {}

output "foo" {
  value = random_pet.foo.id
}

provider "aws" {}
