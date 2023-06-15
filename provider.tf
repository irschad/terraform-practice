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
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "remote-state"
  }
}


provider "aws" {
  region = "us-east-1"
}

