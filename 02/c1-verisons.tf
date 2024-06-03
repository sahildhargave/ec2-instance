# Terraform Block
terraform {
	required_version= ">=1.8.4"
	required_providers {
		aws = {
			 source = "hashicorp/aws"
              version = "5.52.0"
			
		}
	}
}
# Provider Block

provider "aws" {
  region="us-east-1"
  profile="github"
}


# resource block

resource "aws_instance" "local-1" {
  
}





