# Terraform Block
terraform {
  required_version = "~> 1.0.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.47.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }
  }
}
# provider block
provider "aws" {
  profile = "default"
  region  = var.aws_region

}
