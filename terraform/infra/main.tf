terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region  = var.regiao_aws
  profile = "default"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0076b30a832c25ac4"
  instance_type = var.instancia

  vpc_security_group_ids = [
    aws_security_group.full_access.id
  ]

  tags = {
    Name = "ec2-terraform-iac-mack-2"
  }
  depends_on = [
    aws_security_group.full_access
  ]
}

output "IP_Publico" {
  value = aws_instance.app_server.public_ip
}
