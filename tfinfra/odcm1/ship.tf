/* this is a multi
comment */

provider "aws" {
  region = "${var.region}"
}


resource "aws_instance" "odcm1" {

  ami           = "${var.ami}"

  subnet_id = "subnet-044c596c6b1ad7906"

  instance_type = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  tags {
    Name = "butzer-lpip-odcm1"
    Project = "LPIP"
    Owner = "tonybutzer@gmail.com"
  }
  iam_instance_profile                    ="${var.iam_role}"
  security_groups = ["${var.security_group}"]
  user_data                   = "${file("files/espa_boot.sh")}"

  root_block_device {
     volume_size = "30"
     volume_type = "standard"
  }
}
