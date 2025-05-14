variable "region"        { default = "us-east-1" }
variable "vpc_cidr"      { default = "10.0.0.0/16" }
variable "public_subnet" { default = "10.0.1.0/24" }
variable "ami_id"        { default = "ami-0c02fb55956c7d316" } # Amazon Linux 2
variable "instance_type" { default = "t2.medium" }
variable "deployer"      { default = "your-key-name" }