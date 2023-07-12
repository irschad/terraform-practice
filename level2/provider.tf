terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">=1.2"

  backend "s3" {
    bucket         = "terraform-remotestate-abc123xyz"
    key            = "level2.tfstate"
    region         = "us-east-1"
    dynamodb_table = "remote-state0"
  }
}

provider "aws" {
  region = "us-east-1"
}
