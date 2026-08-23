provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket       = "tf-resources-gha-sjb"
    key          = "github-actions/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}