terraform {
  backend "s3" {
    bucket = "gabu-terraform-bucket-mack-us-east-1"
    key    = "tf/terraform.ftstate"
    region = "us-east-1"
  }
}