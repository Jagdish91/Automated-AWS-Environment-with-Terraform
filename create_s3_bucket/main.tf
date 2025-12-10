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
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_tf_bucket" {
  bucket = "my-tf-test-bucket-091886091"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
