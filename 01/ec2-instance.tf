# Terraform Settings Block
terraform {
	required_providers{
		aws = {
		 source = "hashicorp/aws"
      version = "5.52.0"
		
		}
	}
}


# Provider Block
provider "aws" {
	profile = "default" 
	region ="us-east-1"
}

resource "aws_instance" "ec2demo" {
  ami   =  "ami-00beae93a2d981137"
  instance_type = "t2.micro"
}
