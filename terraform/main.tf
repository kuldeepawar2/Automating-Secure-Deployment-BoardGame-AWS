provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./vpc.tf"
}

module "security_groups" {
  source = "./sg.tf"
}

module "instances" {
  source = "./ec2.tf"
}

module "iam" {
  source = "./iam.tf"
}
