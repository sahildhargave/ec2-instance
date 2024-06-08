terraform {
  required_version = ">=1.8.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.31"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
