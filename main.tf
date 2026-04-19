terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }



backend "s3" {
    bucket = "rahmat-acebook"
    key    = "path/tfstate"
    region = "eu-west-2"
  }
  }


locals {
  cluster_name = "my-awesome-eks-cluster"
}


# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
  profile = "rahmat-kluster-user"
}