module "aws-dev" {
  source     = "../../infra"
  instancia  = "t2.micro"
  regiao_aws = "us-east-1"
}

output "IP" {
  value = module.aws-dev.IP_Publico 
}