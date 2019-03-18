variable "region" {
  description = "The AWS region."
  default = "us-west-2"
}

variable "test_name" {
  description = "The test number"
  default = "a1"
}

variable "key_name" {
  description = "The AWS key pair to use for resources."
  default = "butzer"
}
variable "ami" {
  description = "AMI"
  default = "ami-0bbe6b35405ecebdb"
}

variable "master_instance_type" {
  description = "The instance type."
  default = "t2.micro"
}

variable "instance_type" {
  description = "The instance type."
  #default = "t2.micro"
  #default = "m5.4xlarge"
  default = "m5.large"
}


variable "security_group" {
  description = "The AWS security group id"
  # default = "develop-vpc-odc-private"
  # default = "devel-vpc-sg-basicAccessSshIcmp-ZLQWWTGXZ0EL"
  default = "sg-0c86422907174c9c7"
}

variable "iam_role" {
  description = "The AWS iam role"
  default = "Ec2JHedman"
}

