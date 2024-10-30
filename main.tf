provider "aws" {
    region = "us-east-1"
}

terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_instance" "github_tests" {
    ami           = "ami-0e86e20dae9224db8"
    instance_type = "t2.micro"
    tags = {
        Name = "github-tests"
        ManagedBy = "Terraform"
    }
}