terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }


locals {
  cluster_name = "my-awesome-eks-cluster"
}


backend "s3" {
    bucket = "rahmat-acebook"
    key    = "path/tfstate"
    region = "eu-west-2"
  }
  }


# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
  profile = "rahmat-kluster-user"
}