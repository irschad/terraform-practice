terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">=1.2"

  backend "s3" {
    bucket         = "terraform-remotestate3215"
    key            = "level2.tfstate"
    region         = "us-east-1"
    dynamodb_table = "remote-state"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

