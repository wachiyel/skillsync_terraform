provider "aws" {
  region = var.aws_region
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
    awsutils = {
      source = "cloudposse/awsutils"
    }
  }
}