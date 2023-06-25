terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

    # null = {
    #   source  = "hashicorp/null"
    #   version = "3.1.0"
    # }

    # kubernetes = {
    #   source  = "hashicorp/kubernetes"
    #   version = ">= 2.0.1"
    # }
  }

  backend "s3" {
    bucket         = "eks-velero-state"
    key            = "eks-velero/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "eks-velero-locks"
  }

}

provider "aws" {
  region  = var.region
  profile = var.aws_profile
}