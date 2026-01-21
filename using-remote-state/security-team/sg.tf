provider "aws" {
  region = "us-east-1"
}

data "terraform_remote_state" "eip" {
  backend = "s3"
  config = {
    bucket = "terraform-demo-007-statefile"
    key = "networking.tfstate"
    region = "us-east-1"
  }
}

resource "aws_security_group" "my-sg" {
  name = "my-sg"
}

resource "aws_vpc_security_group_ingress_rule" "allow_eip" {
  security_group_id = aws_security_group.my-sg.id
  cidr_ipv4 = "${data.terraform_remote_state.eip.outputs.eip_address}/32"
  from_port = 80
  to_port = 80
  ip_protocol = "tcp"
}
