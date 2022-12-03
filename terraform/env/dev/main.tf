module "aws-dev" {
  source     = "../../infra"
  instancia  = "t2.micro"
  regiao_aws = "us-east-1"
  key_name   = "terra-dev"
}

output "INSTANCE_IP" {
  value = module.aws-dev.IP_Publico 
}