module "aws-dev" {
  source     = "../../infra"
  instancia  = "t2.micro"
  regiao_aws = "us-east-1"
  key_name   = "terra-dev"
}

terraform {
  backend "s3" {
    bucket = "gabu-terraform-bucket-mack-us-east-1"
    key    = "tf/terraform.ftstate"
    region = "us-east-1"
  }
}

output "IP" {
  value = module.aws-dev.IP_Publico 
}