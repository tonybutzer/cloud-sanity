/* this is a multi
comment */

provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "cube6" {
  ami           = "${var.ami}"
  instance_type = "${var.master_instance_type}"
  key_name                    = "${var.key_name}"
  tags {
    Name = "${var.new_name}"
    Owner = "tonybutzer@gmail.com"
  }
  key_name                    = "${var.key_name}"
  iam_instance_profile                    ="${var.iam_role}"
  security_groups = ["${var.security_group}"]
  user_data                   = "${file("files/cubeBox.sh")}"
}

