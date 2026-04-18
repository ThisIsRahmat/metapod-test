terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
  profile = "rahmat-kluster-user"
}

backend "s3" {
    bucket = "rahmat-acebook"
    key    = "path/tfstate"
  }