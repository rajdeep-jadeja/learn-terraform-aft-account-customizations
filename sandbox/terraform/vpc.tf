module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "rajdeep"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "AFT"
    Environment = "Account Customization"
  }
}