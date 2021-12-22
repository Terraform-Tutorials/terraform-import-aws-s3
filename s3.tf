terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  shared_credentials_file = "/home/amaury/.aws/credentials"
  profile = "elliot"
  region = "sa-east-1"
}

resource "aws_s3_bucket" "manually" {
  bucket = "amaury-teste-bucket-aws"
}