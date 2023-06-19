terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">=1.2"

}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5NXTMO65I6HA5VVD"
  secret_key = "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"
}

