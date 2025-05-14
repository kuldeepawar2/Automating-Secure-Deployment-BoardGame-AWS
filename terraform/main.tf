provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc.tf"
}

module "security_groups" {
  source = "./modules/sg.tf"
}

module "instances" {
  source = "./modules/ec2.tf"
}

module "iam" {
  source = "./modules/iam.tf"
}
