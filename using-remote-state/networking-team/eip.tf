provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-demo-007-statefile"
    key    = "networking.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}

resource "aws_eip" "temp" {
  domain = "vpc"
}

output "eip_address" {
  value = aws_eip.temp.public_ip
}
