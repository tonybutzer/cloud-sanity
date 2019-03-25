variable "region" {
  description = "The AWS region."
  default = "us-west-2"
}

variable "key_name" {
  description = "The AWS key pair to use for resources."
  default = "bucketlauncher2-keypair"
}
variable "ami" {
  description = "from cube5 AMI"
  default = "ami-9c4968e4"
}

variable "master_instance_type" {
  description = "The instance type."
  default = "t2.micro"
}

variable "security_group" {
  description = "The AWS security group id"
  #default = "sg-dfd087a2"
  default = "launch-wizard-1"
}

variable "iam_role" {
  description = "The AWS iam role"
  default = "tonyEC2"
}

variable "new_name" {
  description = " The name to be used in several places on ship.sf"
  default = "cube6"
}
