/* this is a multi
comment */

provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "cube4" {
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

  root_block_device {
     volume_size = "30"
     volume_type = "standard"
  }

}

