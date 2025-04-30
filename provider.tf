terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
 # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "sahana-30-04-2025"
    key    = "sahana/terraform.tfstate"
    region = "ap-southeast-1"   
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-1"
}


